<template>
  <div class="home">
    <div class="row">
      <div class="col">

        <h1 class="title">Nuestras peliculas mejor puntuadas</h1>
        <CarouselComponent />
      </div>

    </div>

    <div class="row">
      <div class="col">

        <h3 class="title">Explorá los géneros que mas te interesan</h3>
      </div>

    </div>

    <SearchComponent @movies-updated="getMoviesFromGlobalState" />

    <div class="row">


      <div class="col" v-for="movie in movies" :key="movie">
        <MovieCardComponent :movie="movie" />

      </div>
    </div>
  </div>
</template>
  
<script>

import CarouselComponent from '../components/CarouselComponent.vue';
import SearchComponent from '../components/SearchComponent.vue';
import MovieCardComponent from '../components/MovieCardComponent.vue';
import { useMovieStore } from '../stores/movie';
import { useCatalogStore } from '../stores/catalog';

export default {
  name: "HomeView",
  setup() {
    const movieStore = useMovieStore();
    const { setMovies, retrieveMovies } = movieStore;
    const catalogStore = useCatalogStore();
    const { addToCatalog, removeToCatalog, retrieveCatalog } = catalogStore;
    return { setMovies, retrieveMovies, addToCatalog, removeToCatalog, retrieveCatalog };
  },
  components: {
    CarouselComponent,
    SearchComponent,
    MovieCardComponent

  }, data() {
    return {
      movies: this.retrieveMovies(),
    };
  }, mounted() {
    // Realiza la solicitud para obtener las categorías al montar el componente
    this.getMoviesFromGlobalState();
  },
  methods: {
    // Ejemplo de cómo acceder a las películas desde otro componente
    getMoviesFromGlobalState() {
      this.movies = useMovieStore().movies;
      // Hacer algo con las películas
    }
  }
}
</script>
  
<style scoped>
.home {
  max-width: 90vw;
  margin: auto;
}

.title {
  margin-top: 1em;
}
</style>
