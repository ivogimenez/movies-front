<script>
import { storeToRefs } from "pinia";
import { useMovieStore } from '../stores/movie'

export default {
  // components: { IonPage, IonContent },
  setup() {
    const store = useMovieStore();
    const { getMovies, getMoviesLenght, addMovie } = storeToRefs(store);
    return { getMovies, getMoviesLenght, addMovie };
  }
}
</script>

<template>
  <main>
    <h1>Movies View</h1>

    {{ movieStore.movies[0].titulo }}
    <!-- <ul>
      <li v-for="movie in movieStore.movies" :key="movie.id">
        {{ movie.titulo }}
      </li>
    </ul> -->
  </main>
</template>
