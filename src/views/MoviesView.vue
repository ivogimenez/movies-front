<script>
import { storeToRefs } from "pinia";
import { useMovieStore } from '../../stores/movie'

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

    <div>
      <h2>ACA LLAMAMOS A CADA COMPONENT en ./components/movies según la ruta que seleccione</h2>
    </div>

  </main>
</template>
