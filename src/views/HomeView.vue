<template>
  <div class="home">
    <div class="row">
      <div class="col">

        <h1 class="title"> Nuestra peliculas mejor puntuadas</h1>
        <CarouselComponent />
      </div>

    </div>

    <div class="row">
      <div class="col">

        <h3 class="title">Explorá los géneros que mas te interesan</h3>
      </div>

    </div>


    <div class="row">
      <div class="col">
        <SearchComponent />
      </div>
    </div>
  </div>
</template>
  
<script>

import CarouselComponent from '../components/CarouselComponent.vue';
import SearchComponent from '../components/SearchComponent.vue';

export default {
  components: {
    CarouselComponent,
    SearchComponent
  }
}
</script>
  
<style scoped>
.home {
  max-width: 90vw;
  margin: auto;
}

.title {
  margin-top: 1em;
}
.CarouselComponent{
  width: 92px;
}
</style>
