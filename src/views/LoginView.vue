<template>
  <div class="login">

    <div class="row">

      <div class="col-lg-6">
        <div class="img-cont">
          <img src="../assets/img/moviesdb.png" alt="MobiesDB Logo">
          <p class="text-start text-center slogan">Disfruta de las mejores peliculas. Agregalas a favoritas en un catalogo
            personal</p>
        </div>
      </div>

      <div class="col-lg-6">
        <user-component>

        </user-component>
      </div>

    </div>

  </div>
</template>
  
<script>
import UserComponent from '../components/UserComponent.vue';

export default {
  name: "LoginView",
  components: {
    UserComponent,
  }
};
</script>
  
<style scoped>
.login {
  max-width: 895px;
  margin: auto;
}

.img-cont {
  display: flex;
  flex-direction: column;
}

img {
  max-width: 275px;
  margin: 1em auto 0;
}

.card-comp {
  max-width: 398px;
  margin-top: 2.6em;
}

.slogan {
  font-size: 1.2em;
  font-weight: 500;
  color: #6c757d;
  padding-top: 1em;
}

@media (min-width: 992px) {
  .login {
    margin: 4em auto;
  }
}
</style>
  