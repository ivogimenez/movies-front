<template>
  <nav class="navbar navbar-expand-lg bg-primary">
    <div class="container justify-content-evenly">

      <router-link to="/" class="nav-link active" aria-current="page">
        <div class="icon-container">
          <span class="material-icons">
            home
          </span>
          <h6>Home</h6>
        </div>
      </router-link>

      <router-link to="/catalog" class="nav-link" v-if="isLoggedIn">
        <div class="icon-container">
          <span class="material-icons">
            movie
          </span>
          <h6>Catalog</h6>
        </div>
      </router-link>

      <router-link to="/about" class="nav-link">
        <div class="icon-container">
          <span class="material-icons">
            info
          </span>
          <h6>About</h6>
        </div>
      </router-link>

      <router-link to="/" class="nav-link" @click="logout" v-if="isLoggedIn">
        <div class="icon-container">
          <span class="material-icons">
            logout
          </span>
          <h6>Cerrar Sesión</h6>
        </div>
      </router-link>

    </div>
  </nav>
</template>
  
<script>
import VueCookies from 'vue-cookies';

export default {
  name: "NavComponent",
  data() {
    return {
      isLoggedIn: VueCookies.isKey('session'),
    };
  },
  methods: {
    logout() {
      VueCookies.remove('session');
    },
  },
};
</script>
  
<style scoped>
.material-icons {
  color: white;
  font-size: 1.4em;
  background-color: rgba(182, 180, 180, 0.486);
  padding: 0.3em;
  margin: 0.1em;
  border-radius: 50%;
}

.icon-container {
  color: white;
  text-align: center;
}
</style>
  