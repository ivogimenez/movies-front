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
        <form class="d-flex search-input">
            <input class="form-control me-2" type="search" placeholder="Ingresá el titulo de una pelicula" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Buscar</button>
        </form>
    </div>
</template>
  
<script>
import axios from 'axios';

export default {
    name: 'SearchComponent',
    data() {
        return {
            categories: [],
            selectedFilters: [],
            TMBD_API_KEY: import.meta.env.VITE_TMBD_API_KEY,
            TMBD_API_URL: import.meta.env.VITE_TMBD_API_URL,
        };
    },
    mounted() {
        // Realiza la solicitud para obtener las categorías al montar el componente
        this.fetchCategories();
    },
    methods: {
        async fetchCategories() {
            console.log(this.TMBD_API_KEY, this.TMBD_API_URL)
            try {
                let config = {
                    method: 'get',
                    maxBodyLength: Infinity,
                    url: `${this.TMBD_API_URL}/genre/movie/list?language=es&api_key=${this.TMBD_API_KEY}`,
                    headers: {}
                };

                console.log(JSON.stringify(config))
                const response = await axios.request(config)
                console.log(JSON.stringify(response.data.genres))
                this.categories = response.data.genres;
            } catch (error) {
                console.error('Error al obtener las categorías:', error);
            }
        },
        applyFilters() {
            // Aquí puedes manejar la lógica para aplicar los filtros seleccionados
            console.log('Categorias :', this.categories);
            console.log('Filtros seleccionados:', this.selectedFilters);
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