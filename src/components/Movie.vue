<template>
    <div>
      <h1>Movie Component</h1>
      <p>Mostrando la vista de peliculas</p>
      <button @click="mostrarMensaje">Mostrar mensaje</button>
      <p>{{ mensaje }}</p>
    </div>
  </template>
  
  <script>
  export default {
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
  };
  </script>
  
  <style scoped>

  </style>
  