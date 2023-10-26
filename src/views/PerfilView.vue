<template>
    <div class="perfil">
      <h1>Perfil de Usuario</h1>
  
      <div class="informacion">
        <p>Nombre: {{ usuario.nombre }}</p>
        <p>Género Favorito: {{ usuario.genero }}</p>
      </div>
  
      <h2>Películas Favoritas</h2>
      <ul>
        <li v-for="pelicula in usuario.peliculasFavoritas" :key="pelicula.id">
          {{ pelicula.titulo }} <span @click="darLike(pelicula.id)">Like</span>
        </li>
      </ul>
    </div>
  </template>
  
  <script setup>
  import { ref } from 'vue'
  
  const usuario = ref({
    nombre: 'Kevin Mercs',
    genero: 'Accion',
    peliculasFavoritas: [
      { id: 1, titulo: 'JW1' },
      { id: 2, titulo: 'T2' },
      { id: 3, titulo: 'R3' }
    ]
  })
  
  const darLike = (peliculaId) => {
    const pelicula = usuario.peliculasFavoritas.find(p => p.id === peliculaId)
    if (pelicula) {
      pelicula.likes = (pelicula.likes || 0) + 1
    }
  }
  </script>
  
  <style scoped>
  .perfil {
    max-width: 800px;
    margin: 0 auto;
  }
  
  .informacion {
    margin-bottom: 20px;
  }
  
  ul {
    list-style-type: none;
    padding: 0;
  }
  
  li {
    margin-bottom: 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  </style>
  