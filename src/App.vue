<script>
import { RouterLink, RouterView } from 'vue-router'
import DynamicViewContainer from './views/commons/DynamicViewContainer.vue';

export default {
  components: {
    DynamicViewContainer
  }
}
</script>

<template>
  <div id="app">
    <DynamicViewContainer />
  </div>
  <RouterLink to="/">Home</RouterLink>
  <RouterLink to="/movies">Movies</RouterLink>

  <RouterView />
</template>

<style></style>
