<template>
  <div class="nosotros text-center">
    <h1>Sobre Nosotros</h1>
    <br>
    <p class="resaltado">Somos los devs de la empresa MoviesORT. ¡Bienvenido a nuestro mundo cinéfilo! En MoviesORT, nos
      apasiona crear experiencias únicas para los amantes del séptimo arte. Con cada línea de código, trabajamos
      incansablemente para llevar la magia del cine directamente a tu pantalla. Únete a nosotros en este emocionante
      viaje, donde la innovación y la creatividad se encuentran en cada fotograma. ¡Descubre la diferencia con MoviesORT!
    </p>
  </div>
</template>

<script>
export default {
  name: 'NosotrosView',
}
</script>

<style scoped>
.nosotros {
  max-width: 100%;
  margin: 0 auto;
  padding: 20px;
  /* background: url('src/assets/img/moviesdb.png') no-repeat center center fixed; */
  background-size: 20%;
}

.resaltado {
  font-size: 1.2em;
  /* Puedes ajustar el tamaño de la fuente según tus preferencias */
  color: #000000;
  /* Puedes ajustar el color del texto según tus preferencias */
  font-weight: bold;
  /* Hace que el texto sea más grueso o "fuerte" */
  max-width: 80vw;
  margin: auto
}</style>