<template>
    <div class="movie-card">
        <div class="card" style="width: 13rem;">
            <img class="card-img-top" :alt="movie.title" :src="movie.img">
            <div class="card-body">
                <h5 class="card-title"> {{ movie.title }}</h5>
            </div>
            <div class="btn-container d-grid gap-2">
                <button class="btn btn-primary"  v-if="!movieIsInCatalog(movie)" @click="addToCatalog(movie)"> Agregar a favoritos</button>
                <button class="btn btn-danger" v-if="movieIsInCatalog(movie)" @click="removeToCatalog(movie)"> Eliminar de favoritos</button>
            </div>
        </div>
    </div>
</template>

<script>
import { useCatalogStore } from '../stores/catalog';

export default {
    name: "MovieCardComponent",
    setup() {
        const catalogStore = useCatalogStore();
        const { addToCatalog, removeToCatalog, retrieveCatalog } = catalogStore;
        return { addToCatalog, removeToCatalog, retrieveCatalog };
    },
    props: ['movie'],
    data() {
        return {
            catalog: this.retrieveCatalog(),
        };
    }, mounted() {
        // Realiza la solicitud para obtener las categorías al montar el componente
        this.getCatalogFromGlobalState();
    },
    methods: {
        getCatalogFromGlobalState() {
            this.catalog = useCatalogStore().catalog;
        },
        movieIsInCatalog(movie) {
            return this.catalog.some((movieInCatalog) => movieInCatalog.id === movie.id);
        },
    }
}   
</script>

<style scoped>
.card {
    border: none;
    padding: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 8px 16px rgba(0, 0, 0, 0.1);
}

.card-title {
    text-align: center;
}

.movie-card {
    margin-top: 1.5em;
}
</style>