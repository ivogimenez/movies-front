<template>
    <div class="search">

        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Géneros disponibles
            </button>
            <ul class="dropdown-menu form-check-inline filter-dropdown">
                <li v-for="category in categories" :key="category.id">
                    <input class="form-check-input" type="checkbox" :id="category.id" v-model="selectedFilters"
                        :value="category" />
                    <label class="form-check-label" :for="category.id">
                        {{ category.name }}
                    </label>
                </li>
                <hr>
                <li class="btn-li">
                    <button class="btn btn-link btn-apply" type="button" aria-expanded="false" @click="applyFilters">
                        Aplicar filtro
                    </button>
                </li>
                <li class="btn-li">
                    <button class="btn btn-link btn-delete" type="button" aria-expanded="false" @click="clearFilters">
                        Borrar filtro
                    </button>
                </li>
            </ul>
        </div>
        <form class="d-flex search-input" @submit.prevent>
            <input class="form-control me-2" type="search" placeholder="Ingresá el titulo de una pelicula"
                aria-label="Search">
            <button class="btn btn-outline-success" @click.prevent="searchMoviesWithFilters">Buscar</button>
        </form>
    </div>
</template>
  
<script>
import axios from 'axios';
import _ from 'lodash';
import { useMovieStore } from '../stores/movie';

export default {
    name: 'SearchComponent',
    setup() {
        const store = useMovieStore();
        const { setMovies, retrieveMovies } = store
        return { setMovies, retrieveMovies };
    },
    data() {
        return {
            categories: [],
            selectedFilters: [],
            TMBD_API_URL: import.meta.env.VITE_TMBD_API_URL,
            TMBD_API_KEY: import.meta.env.VITE_TMBD_API_KEY,
            TMBD_IGM_BASE_URL: import.meta.env.VITE_TMBD_IGM_BASE_URL,
        };
    },
    mounted() {
        // Realiza la solicitud para obtener las categorías al montar el componente
        this.fetchCategories();
        this.searchMoviesWithFilters();
    },
    methods: {
        async fetchCategories() {

            try {
                let config = {
                    method: 'get',
                    maxBodyLength: Infinity,
                    url: `${this.TMBD_API_URL}/genre/movie/list?language=es&api_key=${this.TMBD_API_KEY}`,
                    headers: {}
                };
                const response = await axios.request(config)
                this.categories = response.data.genres;
            } catch (error) {
                console.error('Error al obtener las categorías:', error);
            }
        },
        searchMoviesWithFilters() {
            let genresIds = _.map(this.selectedFilters, (genre) => _.values(_.pick(genre, "id")));
            let genresjoined = _.join(genresIds)

            let config = {
                method: 'get',
                maxBodyLength: Infinity,
                url: `${this.TMBD_API_URL}/discover/movie?with_genres=${genresjoined}&sort_by=popularity.desc&language=es-MX&page=1&api_key=${this.TMBD_API_KEY}`,
                headers: {}
            };

            return axios.request(config)
                .then(({ data }) => {
                    const movs = _.map(data.results, movie => {
                        const mov = _.pick(movie, ['poster_path', 'title', 'id'])


                        return {
                            id: mov.id,
                            title: mov.title,
                            img: `${this.TMBD_IGM_BASE_URL}${mov.poster_path}`
                        }
                    })
                    this.setMovies(movs);
                    console.log(this.retrieveMovies())
                })
                .catch((error) => {
                    console.log(error);
                });

        },
        clearFilters() {
            // Limpia los filtros y deselecciona los checkboxes
            this.selectedFilters = [];
        }
    },
};
</script>
  
<style scoped>
/* Agrega estilos adicionales si es necesario */
/* Estilos adicionales si es necesario */
.search {
    display: flex;
    align-items: center;
    /* Alinea los elementos verticalmente en el centro */
}

.filter-dropdown,
.form-check-label {
    padding-left: 10px;
}

.dropdown-menu {
    min-width: 180px;
    padding-right: 10px;
}

.btn-li {
    text-align: center;
    margin: 0px;
    padding: 0px;
}

.btn-delete {
    color: rgb(121, 5, 5);
}

.btn-link {
    margin: 0;
    padding: 0;
    font-size: 0.9em;
}

/* Estilos para el input de búsqueda */
.search-input {
    flex-grow: 1;
    /* El input de búsqueda ocupará todo el espacio restante */
    margin-left: 10px;
    /* Agrega un espacio a la izquierda para separarlo del dropdown */
}
</style>