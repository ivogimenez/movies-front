<template>
    <div>
      <h1>Home Component</h1>
      <p>Bienvenido a la página de inicio</p>
      <button @click="mostrarHomeView">Mostrar HomeView</button>
    </div>
  </template>
  
  <script>
  export default {
    methods: {
      mostrarHomeView() {
        console.log('Mostrando HomeView');
        this.$router.push({ name: 'home-view' }); // Esto tiene que redirigir al a ruta de la vista
      }
    }
  };
  </script>
  
  <style scoped>
 
  </style>
  