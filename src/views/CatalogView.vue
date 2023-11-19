<template>
  <div class="catalog">


    <h1>Catalog Component</h1>
    <p>Bienvenido a la página de inicio</p>
    <button @click="mostrarCatalogView">Mostrar CatalogView</button>

  </div>
</template>
  
<script>
import UserComponent from '../components/UserComponent.vue';

export default {
  name: "CatalogView",
  methods: {
    mostrarCatalogView() {
      console.log('Mostrando CatalogView');
    }
  }
};
</script>
  
<style scoped></style>
  


<!-- Viejo IndexView.vue
   
const movieStore = useMovieStore();
const userStore = useUserStore();

const { getMovies, getMoviesLength, addMovie } = storeToRefs(movieStore);
const { getUsers, getUsersLength, addUser } = storeToRefs(userStore);


const usuario = {
  nombre: 'Kevin Mercs',
  genero: 'Accion',
  peliculasFavoritas: [
    { id: 1, titulo: 'JW1' },
    { id: 2, titulo: 'T2' },
    { id: 3, titulo: 'R3' }
  ]
};

const darLike = (peliculaId) => {
  const pelicula = usuario.peliculasFavoritas.find(p => p.id === peliculaId);
  if (pelicula) {
    pelicula.likes = (pelicula.likes || 0) + 1;
  }
}; -->