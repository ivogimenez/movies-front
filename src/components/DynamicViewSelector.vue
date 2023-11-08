<template>
    <div>
      <button @click="seleccionarVista('home')">Home</button>
      <button @click="seleccionarVista('usuario')">Usuario</button>
      <button @click="seleccionarVista('about')">About</button>
      <button @click="seleccionarVista('movies')">Movies</button>
    </div>
  </template>
  
  <script>
  export default {
    methods: {
      seleccionarVista(vista) {
        this.$emit('cambiar-vista', vista);
      }
    }
  }
  </script>
  