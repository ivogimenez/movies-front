<template>
  <NavComponent />
  <router-view />
</template>

<script>
import { RouterLink, RouterView } from 'vue-router'
import NavComponent from './components/NavComponent.vue';

export default {
  name: "App",
  components: {
    NavComponent
  }
}
</script>

<style></style>

