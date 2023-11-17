<template>
  <div id="app">
    <header>
      <nav class="primary-nav">
        <router-link to="/home">Home</router-link>
        <router-link to="/movies">Movies</router-link>
        <router-link to="/user">User</router-link>
      </nav>
    </header>

    <router-view />
  </div>
</template>

<script>
import { RouterLink, RouterView } from 'vue-router'
export default {
  
}
</script>

<style>
</style>

