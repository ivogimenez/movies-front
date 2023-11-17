<template>
  <div>
    <header>
      <nav class="primary-nav">
        <button @click="cambiarComponente('Home')">Home</button>
        <button @click="cambiarComponente('Movies')">Movies</button>
        <button @click="cambiarComponente('User')">User</button>

      </nav>
      <li>Titulo de prueba</li>
    </header>

    <component :is="componenteActual" />
  </div>
</template>
  
<script>
import { storeToRefs } from 'pinia';
import { useMovieStore } from '../stores/movie';
import { useUserStore } from '../stores/user';
import router from '../router';

export default {
  setup() {
    const movieStore = useMovieStore();
    const userStore = useUserStore();

    const { getMovies, getMoviesLength, addMovie } = storeToRefs(movieStore);
    const { getUsers, getUsersLength, addUser } = storeToRefs(userStore);

    let componenteActual = 'HomeView.vue';

    const cambiarComponente = (component) => {
      componenteActual = `${component}`;
      console.log('Cambiando a', componenteActual);
      router.push(`/${componenteActual.toLowerCase()}`);
    };

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
    };

    return {
      getMovies,
      getMoviesLength,
      addMovie,
      getUsers,
      getUsersLength,
      addUser,
      componenteActual,
      cambiarComponente,
      usuario,
      darLike
    };
  }
};
</script>
  
<style scoped>
/* estilo de prueba para la primary  */
.primary-nav {
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 20px;
  background-color: #333;
  color: #fff;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
  font-size: 20px;
}

.primary-nav button {
  border: none;
  background: none;
  color: white;
  cursor: pointer;
}

.primary-nav button:hover {
  text-decoration: underline;
}
</style>
  