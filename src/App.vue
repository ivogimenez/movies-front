<template>
  <NavComponent />
  <router-view class="router-view" />
  <FooterComponent />
</template>

<script>
import { RouterLink, RouterView } from 'vue-router'
import NavComponent from './components/NavComponent.vue';
import FooterComponent from './components/FooterComponent.vue';

export default {
  name: "App",
  components: {
    NavComponent,
    FooterComponent
  }
}
</script>

<style>
.router-view{
  min-height: 70vh;
}
</style>

