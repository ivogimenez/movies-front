<template>
  <div class="movies">
    <div>
      <h1>Movie Component</h1>
      <p>Mostrando la vista de peliculas</p>
      <button @click="mostrarMensaje">Mostrar mensaje</button>
      <p>{{ mensaje }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MoviesView',
  data() {
    return {
      mensaje: 'mensaje'
    };
  },
  methods: {
    mostrarMensaje() {
      this.mensaje = 'Hola! que te interesa ver hoy??';
    }
  }
} 
</script>

<style scoped>
.movies {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
}
</style>


  