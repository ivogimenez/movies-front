
<template>
    <div v-if="isLoggedIn">
      <h1>Contenido del componente protegido</h1>
    
    </div>
    <div v-else>
      <h1>Acceso no autorizado</h1>
      <p>Debes iniciar sesión para acceder a este contenido.</p>
      <router-link to="/" >
        <button class="btn-primary"> Iniciar Sesion </button>
      </router-link>
    </div>
  </template>
  
  <script>
  import VueCookies from 'vue-cookies';
  
  export default {
    name: 'LoginRequiredComponent',
    data() {
      return {
        isLoggedIn: false,
      };
    },
  };
  </script>
  
  <style scoped>
 
  </style>
  

