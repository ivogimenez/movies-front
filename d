[1mdiff --git a/src/App.vue b/src/App.vue[m
[1mindex d99b53d..e864195 100644[m
[1m--- a/src/App.vue[m
[1m+++ b/src/App.vue[m
[36m@@ -1,23 +1,85 @@[m
[31m-<script>[m
[32m+[m[32m<script setup>[m
 import { RouterLink, RouterView } from 'vue-router'[m
[31m-import DynamicViewContainer from './views/DynamicViewContainer.vue';[m
[31m-[m
[31m-export default {[m
[31m-  components: {[m
[31m-    DynamicViewContainer[m
[31m-  }[m
[31m-}[m
[32m+[m[32mimport HelloWorld from './components/HelloWorld.vue'[m
 </script>[m
 [m
 <template>[m
[31m-  <div id="app">[m
[31m-    <DynamicViewContainer />[m
[31m-  </div>[m
[31m-  <RouterLink to="/">Home</RouterLink>[m
[31m-  <RouterLink to="/about">About</RouterLink>[m
[31m-  <RouterLink to="/movies">Movies</RouterLink>[m
[32m+[m[32m  <header>[m
[32m+[m[32m    <img alt="Vue logo" class="logo" src="@/assets/logo.svg" width="125" height="125" />[m
[32m+[m
[32m+[m[32m    <div class="wrapper">[m
[32m+[m[32m      <HelloWorld msg="You did it!" />[m
[32m+[m
[32m+[m[32m      <nav>[m
[32m+[m[32m        <RouterLink to="/">Home</RouterLink>[m
[32m+[m[32m        <RouterLink to="/about">About</RouterLink>[m
[32m+[m[32m      </nav>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  </header>[m
 [m
   <RouterView />[m
 </template>[m
 [m
[31m-<style></style>[m
[32m+[m[32m<style scoped>[m
[32m+[m[32mheader {[m
[32m+[m[32m  line-height: 1.5;[m
[32m+[m[32m  max-height: 100vh;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.logo {[m
[32m+[m[32m  display: block;[m
[32m+[m[32m  margin: 0 auto 2rem;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mnav {[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  font-size: 12px;[m
[32m+[m[32m  text-align: center;[m
[32m+[m[32m  margin-top: 2rem;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mnav a.router-link-exact-active {[m
[32m+[m[32m  color: var(--color-text);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mnav a.router-link-exact-active:hover {[m
[32m+[m[32m  background-color: transparent;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mnav a {[m
[32m+[m[32m  display: inline-block;[m
[32m+[m[32m  padding: 0 1rem;[m
[32m+[m[32m  border-left: 1px solid var(--color-border);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mnav a:first-of-type {[m
[32m+[m[32m  border: 0;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m@media (min-width: 1024px) {[m
[32m+[m[32m  header {[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    place-items: center;[m
[32m+[m[32m    padding-right: calc(var(--section-gap) / 2);[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  .logo {[m
[32m+[m[32m    margin: 0 2rem 0 0;[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  header .wrapper {[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    place-items: flex-start;[m
[32m+[m[32m    flex-wrap: wrap;[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  nav {[m
[32m+[m[32m    text-align: left;[m
[32m+[m[32m    margin-left: -1rem;[m
[32m+[m[32m    font-size: 1rem;[m
[32m+[m
[32m+[m[32m    padding: 1rem 0;[m
[32m+[m[32m    margin-top: 1rem;[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m[32m</style>[m
[1mdiff --git a/src/components/DynamicViewSelector.vue b/src/components/DynamicViewSelector.vue[m
[1mdeleted file mode 100644[m
[1mindex cd0fdcd..0000000[m
[1m--- a/src/components/DynamicViewSelector.vue[m
[1m+++ /dev/null[m
[36m@@ -1,19 +0,0 @@[m
[31m-<template>[m
[31m-    <div>[m
[31m-      <button @click="seleccionarVista('home')">Home</button>[m
[31m-      <button @click="seleccionarVista('usuario')">Usuario</button>[m
[31m-      <button @click="seleccionarVista('about')">About</button>[m
[31m-      <button @click="seleccionarVista('movies')">Movies</button>[m
[31m-    </div>[m
[31m-  </template>[m
[31m-  [m
[31m-  <script>[m
[31m-  export default {[m
[31m-    methods: {[m
[31m-      seleccionarVista(vista) {[m
[31m-        this.$emit('cambiarVista', vista);[m
[31m-      }[m
[31m-    }[m
[31m-  }[m
[31m-  </script>[m
[31m-  [m
\ No newline at end of file[m
[1mdiff --git a/src/components/icons/IconCommunity.vue b/src/components/icons/IconCommunity.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..2dc8b05[m
[1m--- /dev/null[m
[1m+++ b/src/components/icons/IconCommunity.vue[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<template>[m
[32m+[m[32m  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor">[m
[32m+[m[32m    <path[m
[32m+[m[32m      d="M15 4a1 1 0 1 0 0 2V4zm0 11v-1a1 1 0 0 0-1 1h1zm0 4l-.707.707A1 1 0 0 0 16 19h-1zm-4-4l.707-.707A1 1 0 0 0 11 14v1zm-4.707-1.293a1 1 0 0 0-1.414 1.414l1.414-1.414zm-.707.707l-.707-.707.707.707zM9 11v-1a1 1 0 0 0-.707.293L9 11zm-4 0h1a1 1 0 0 0-1-1v1zm0 4H4a1 1 0 0 0 1.707.707L5 15zm10-9h2V4h-2v2zm2 0a1 1 0 0 1 1 1h2a3 3 0 0 0-3-3v2zm1 1v6h2V7h-2zm0 6a1 1 0 0 1-1 1v2a3 3 0 0 0 3-3h-2zm-1 1h-2v2h2v-2zm-3 1v4h2v-4h-2zm1.707 3.293l-4-4-1.414 1.414 4 4 1.414-1.414zM11 14H7v2h4v-2zm-4 0c-.276 0-.525-.111-.707-.293l-1.414 1.414C5.42 15.663 6.172 16 7 16v-2zm-.707 1.121l3.414-3.414-1.414-1.414-3.414 3.414 1.414 1.414zM9 12h4v-2H9v2zm4 0a3 3 0 0 0 3-3h-2a1 1 0 0 1-1 1v2zm3-3V3h-2v6h2zm0-6a3 3 0 0 0-3-3v2a1 1 0 0 1 1 1h2zm-3-3H3v2h10V0zM3 0a3 3 0 0 0-3 3h2a1 1 0 0 1 1-1V0zM0 3v6h2V3H0zm0 6a3 3 0 0 0 3 3v-2a1 1 0 0 1-1-1H0zm3 3h2v-2H3v2zm1-1v4h2v-4H4zm1.707 4.707l.586-.586-1.414-1.414-.586.586 1.414 1.414z"[m
[32m+[m[32m    />[m
[32m+[m[32m  </svg>[m
[32m+[m[32m</template>[m
[1mdiff --git a/src/components/icons/IconDocumentation.vue b/src/components/icons/IconDocumentation.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..6d4791c[m
[1m--- /dev/null[m
[1m+++ b/src/components/icons/IconDocumentation.vue[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<template>[m
[32m+[m[32m  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" fill="currentColor">[m
[32m+[m[32m    <path[m
[32m+[m[32m      d="M11 2.253a1 1 0 1 0-2 0h2zm-2 13a1 1 0 1 0 2 0H9zm.447-12.167a1 1 0 1 0 1.107-1.666L9.447 3.086zM1 2.253L.447 1.42A1 1 0 0 0 0 2.253h1zm0 13H0a1 1 0 0 0 1.553.833L1 15.253zm8.447.833a1 1 0 1 0 1.107-1.666l-1.107 1.666zm0-14.666a1 1 0 1 0 1.107 1.666L9.447 1.42zM19 2.253h1a1 1 0 0 0-.447-.833L19 2.253zm0 13l-.553.833A1 1 0 0 0 20 15.253h-1zm-9.553-.833a1 1 0 1 0 1.107 1.666L9.447 14.42zM9 2.253v13h2v-13H9zm1.553-.833C9.203.523 7.42 0 5.5 0v2c1.572 0 2.961.431 3.947 1.086l1.107-1.666zM5.5 0C3.58 0 1.797.523.447 1.42l1.107 1.666C2.539 2.431 3.928 2 5.5 2V0zM0 2.253v13h2v-13H0zm1.553 13.833C2.539 15.431 3.928 15 5.5 15v-2c-1.92 0-3.703.523-5.053 1.42l1.107 1.666zM5.5 15c1.572 0 2.961.431 3.947 1.086l1.107-1.666C9.203 13.523 7.42 13 5.5 13v2zm5.053-11.914C11.539 2.431 12.928 2 14.5 2V0c-1.92 0-3.703.523-5.053 1.42l1.107 1.666zM14.5 2c1.573 0 2.961.431 3.947 1.086l1.107-1.666C18.203.523 16.421 0 14.5 0v2zm3.5.253v13h2v-13h-2zm1.553 12.167C18.203 13.523 16.421 13 14.5 13v2c1.573 0 2.961.431 3.947 1.086l1.107-1.666zM14.5 13c-1.92 0-3.703.523-5.053 1.42l1.107 1.666C11.539 15.431 12.928 15 14.5 15v-2z"[m
[32m+[m[32m    />[m
[32m+[m[32m  </svg>[m
[32m+[m[32m</template>[m
[1mdiff --git a/src/components/icons/IconEcosystem.vue b/src/components/icons/IconEcosystem.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..c3a4f07[m
[1m--- /dev/null[m
[1m+++ b/src/components/icons/IconEcosystem.vue[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<template>[m
[32m+[m[32m  <svg xmlns="http://www.w3.org/2000/svg" width="18" height="20" fill="currentColor">[m
[32m+[m[32m    <path[m
[32m+[m[32m      d="M11.447 8.894a1 1 0 1 0-.894-1.789l.894 1.789zm-2.894-.789a1 1 0 1 0 .894 1.789l-.894-1.789zm0 1.789a1 1 0 1 0 .894-1.789l-.894 1.789zM7.447 7.106a1 1 0 1 0-.894 1.789l.894-1.789zM10 9a1 1 0 1 0-2 0h2zm-2 2.5a1 1 0 1 0 2 0H8zm9.447-5.606a1 1 0 1 0-.894-1.789l.894 1.789zm-2.894-.789a1 1 0 1 0 .894 1.789l-.894-1.789zm2 .789a1 1 0 1 0 .894-1.789l-.894 1.789zm-1.106-2.789a1 1 0 1 0-.894 1.789l.894-1.789zM18 5a1 1 0 1 0-2 0h2zm-2 2.5a1 1 0 1 0 2 0h-2zm-5.447-4.606a1 1 0 1 0 .894-1.789l-.894 1.789zM9 1l.447-.894a1 1 0 0 0-.894 0L9 1zm-2.447.106a1 1 0 1 0 .894 1.789l-.894-1.789zm-6 3a1 1 0 1 0 .894 1.789L.553 4.106zm2.894.789a1 1 0 1 0-.894-1.789l.894 1.789zm-2-.789a1 1 0 1 0-.894 1.789l.894-1.789zm1.106 2.789a1 1 0 1 0 .894-1.789l-.894 1.789zM2 5a1 1 0 1 0-2 0h2zM0 7.5a1 1 0 1 0 2 0H0zm8.553 12.394a1 1 0 1 0 .894-1.789l-.894 1.789zm-1.106-2.789a1 1 0 1 0-.894 1.789l.894-1.789zm1.106 1a1 1 0 1 0 .894 1.789l-.894-1.789zm2.894.789a1 1 0 1 0-.894-1.789l.894 1.789zM8 19a1 1 0 1 0 2 0H8zm2-2.5a1 1 0 1 0-2 0h2zm-7.447.394a1 1 0 1 0 .894-1.789l-.894 1.789zM1 15H0a1 1 0 0 0 .553.894L1 15zm1-2.5a1 1 0 1 0-2 0h2zm12.553 2.606a1 1 0 1 0 .894 1.789l-.894-1.789zM17 15l.447.894A1 1 0 0 0 18 15h-1zm1-2.5a1 1 0 1 0-2 0h2zm-7.447-5.394l-2 1 .894 1.789 2-1-.894-1.789zm-1.106 1l-2-1-.894 1.789 2 1 .894-1.789zM8 9v2.5h2V9H8zm8.553-4.894l-2 1 .894 1.789 2-1-.894-1.789zm.894 0l-2-1-.894 1.789 2 1 .894-1.789zM16 5v2.5h2V5h-2zm-4.553-3.894l-2-1-.894 1.789 2 1 .894-1.789zm-2.894-1l-2 1 .894 1.789 2-1L8.553.106zM1.447 5.894l2-1-.894-1.789-2 1 .894 1.789zm-.894 0l2 1 .894-1.789-2-1-.894 1.789zM0 5v2.5h2V5H0zm9.447 13.106l-2-1-.894 1.789 2 1 .894-1.789zm0 1.789l2-1-.894-1.789-2 1 .894 1.789zM10 19v-2.5H8V19h2zm-6.553-3.894l-2-1-.894 1.789 2 1 .894-1.789zM2 15v-2.5H0V15h2zm13.447 1.894l2-1-.894-1.789-2 1 .894 1.789zM18 15v-2.5h-2V15h2z"[m
[32m+[m[32m    />[m
[32m+[m[32m  </svg>[m
[32m+[m[32m</template>[m
[1mdiff --git a/src/components/icons/IconSupport.vue b/src/components/icons/IconSupport.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..7452834[m
[1m--- /dev/null[m
[1m+++ b/src/components/icons/IconSupport.vue[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<template>[m
[32m+[m[32m  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor">[m
[32m+[m[32m    <path[m
[32m+[m[32m      d="M10 3.22l-.61-.6a5.5 5.5 0 0 0-7.666.105 5.5 5.5 0 0 0-.114 7.665L10 18.78l8.39-8.4a5.5 5.5 0 0 0-.114-7.665 5.5 5.5 0 0 0-7.666-.105l-.61.61z"[m
[32m+[m[32m    />[m
[32m+[m[32m  </svg>[m
[32m+[m[32m</template>[m
[1mdiff --git a/src/components/icons/IconTooling.vue b/src/components/icons/IconTooling.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..660598d[m
[1m--- /dev/null[m
[1m+++ b/src/components/icons/IconTooling.vue[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m<!-- This icon is from <https://github.com/Templarian/MaterialDesign>, distributed under Apache 2.0 (https://www.apache.org/licenses/LICENSE-2.0) license-->[m
[32m+[m[32m<template>[m
[32m+[m[32m  <svg[m
[32m+[m[32m    xmlns="http://www.w3.org/2000/svg"[m
[32m+[m[32m    xmlns:xlink="http://www.w3.org/1999/xlink"[m
[32m+[m[32m    aria-hidden="true"[m
[32m+[m[32m    role="img"[m
[32m+[m[32m    class="iconify iconify--mdi"[m
[32m+[m[32m    width="24"[m
[32m+[m[32m    height="24"[m
[32m+[m[32m    preserveAspectRatio="xMidYMid meet"[m
[32m+[m[32m    viewBox="0 0 24 24"[m
[32m+[m[32m  >[m
[32m+[m[32m    <path[m
[32m+[m[32m      d="M20 18v-4h-3v1h-2v-1H9v1H7v-1H4v4h16M6.33 8l-1.74 4H7v-1h2v1h6v-1h2v1h2.41l-1.74-4H6.33M9 5v1h6V5H9m12.84 7.61c.1.22.16.48.16.8V18c0 .53-.21 1-.6 1.41c-.4.4-.85.59-1.4.59H4c-.55 0-1-.19-1.4-.59C2.21 19 2 18.53 2 18v-4.59c0-.32.06-.58.16-.8L4.5 7.22C4.84 6.41 5.45 6 6.33 6H7V5c0-.55.18-1 .57-1.41C7.96 3.2 8.44 3 9 3h6c.56 0 1.04.2 1.43.59c.39.41.57.86.57 1.41v1h.67c.88 0 1.49.41 1.83 1.22l2.34 5.39z"[m
[32m+[m[32m      fill="currentColor"[m
[32m+[m[32m    ></path>[m
[32m+[m[32m  </svg>[m
[32m+[m[32m</template>[m
[1mdiff --git a/src/main.js b/src/main.js[m
[1mindex d1c4ee0..5dcad83 100644[m
[1m--- a/src/main.js[m
[1m+++ b/src/main.js[m
[36m@@ -10,6 +10,5 @@[m [mconst app = createApp(App)[m
 [m
 app.use(createPinia())[m
 app.use(router)[m
[31m-router.isReady().then(() => {[m
[31m-    app.mount('#app');[m
[31m-});[m
[32m+[m
[32m+[m[32mapp.mount('#app')[m
[1mdiff --git a/src/router/index.js b/src/router/index.js[m
[1mindex 1f614e1..fe3aae7 100644[m
[1m--- a/src/router/index.js[m
[1m+++ b/src/router/index.js[m
[36m@@ -1,35 +1,47 @@[m
 import { createRouter, createWebHistory } from 'vue-router'[m
 import HomeView from '../views/HomeView.vue'[m
[31m-import UsuarioView from '../views/UsuarioView.vue'[m
[31m-import AboutView from '../views/AboutView.vue'[m
[31m-import MoviesView from '../views/MoviesView.vue'[m
[31m-[m
[31m-const routes = [[m
[31m-  {[m
[31m-    path: '/',[m
[31m-    name: 'home',[m
[31m-    component: HomeView[m
[31m-  },[m
[31m-  {[m
[31m-    path: '/usuario',[m
[31m-    name: 'usuario',[m
[31m-    component: UsuarioView[m
[31m-  },[m
[31m-  {[m
[31m-    path: '/about',[m
[31m-    name: 'about',[m
[31m-    component: AboutView[m
[31m-  },[m
[31m-  {[m
[31m-    path: '/movies',[m
[31m-    name: 'movies',[m
[31m-    component: MoviesView[m
[31m-  }[m
[31m-][m
[32m+[m[32mimport PerfilView from '../views/PerfilView.vue'[m
[32m+[m[32mimport AgregarPerfilView from '../views/AgregarPerfilView.vue'[m
[32m+[m[32mimport EditarPerfilView from '../views/EditarPerfilView.vue'[m
[32m+[m[32mimport EliminarPerfilView from '../views/EliminarPerfilView.vue'[m
 [m
 const router = createRouter({[m
   history: createWebHistory(import.meta.env.BASE_URL),[m
[31m-  routes[m
[32m+[m[32m  routes: [[m
[32m+[m[32m    {[m
[32m+[m[32m      path: '/',[m
[32m+[m[32m      name: 'home',[m
[32m+[m[32m      component: HomeView[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      path: '/about',[m
[32m+[m[32m      name: 'about',[m
[32m+[m[32m      // route level code-splitting[m
[32m+[m[32m      // this generates a separate chunk (About.[hash].js) for this route[m
[32m+[m[32m      // which is lazy-loaded when the route is visited.[m
[32m+[m[32m      component: () => import('../views/AboutView.vue')[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      path: '/',[m
[32m+[m[32m      name: 'perfil',[m
[32m+[m[32m      component: PerfilView[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      path: '/',[m
[32m+[m[32m      name: 'editar-perfil',[m
[32m+[m[32m      component: EditarPerfilView[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      path: '/',[m
[32m+[m[32m      name: 'agregar-perfil',[m
[32m+[m[32m      component: AgregarPerfilView[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      path: '/',[m
[32m+[m[32m      name: 'eliminar-perfil',[m
[32m+[m[32m      component: EliminarPerfilView[m
[32m+[m[32m    },[m
[32m+[m[32m  ][m
 })[m
 [m
 export default router[m
[1mdiff --git a/src/stores/counter.js b/src/stores/counter.js[m
[1mnew file mode 100644[m
[1mindex 0000000..b6757ba[m
[1m--- /dev/null[m
[1m+++ b/src/stores/counter.js[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32mimport { ref, computed } from 'vue'[m
[32m+[m[32mimport { defineStore } from 'pinia'[m
[32m+[m
[32m+[m[32mexport const useCounterStore = defineStore('counter', () => {[m
[32m+[m[32m  const count = ref(0)[m
[32m+[m[32m  const doubleCount = computed(() => count.value * 2)[m
[32m+[m[32m  function increment() {[m
[32m+[m[32m    count.value++[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  return { count, doubleCount, increment }[m
[32m+[m[32m})[m
[1mdiff --git a/src/stores/movie.js b/src/stores/movie.js[m
[1mdeleted file mode 100644[m
[1mindex 5a2e364..0000000[m
[1m--- a/src/stores/movie.js[m
[1m+++ /dev/null[m
[36m@@ -1,27 +0,0 @@[m
[31m-import { defineStore } from 'pinia'[m
[31m-[m
[31m-export const useMovieStore = defineStore('movie', {[m
[31m-  state: () => ({[m
[31m-    movies: [{[m
[31m-      titulo: 'Hola XD',[m
[31m-      anioLanzamiento: null,[m
[31m-      genero: '',[m
[31m-      director: '',[m
[31m-      creador: '',[m
[31m-      descripción: ''[m
[31m-    }][m
[31m-  }),[m
[31m-  actions: {[m
[31m-    addMovie: (movie) => {[m
[31m-      this.movies.push(movie);[m
[31m-    }[m
[31m-  },[m
[31m-  getters: {[m
[31m-    getMovies: (state) => {[m
[31m-      state.movies;[m
[31m-    },[m
[31m-    getMoviesLength: (state) => {[m
[31m-      state.movies.lenght;[m
[31m-    }[m
[31m-  }[m
[31m-})[m
[1mdiff --git a/src/stores/user.js b/src/stores/user.js[m
[1mnew file mode 100644[m
[1mindex 0000000..8dec8d2[m
[1m--- /dev/null[m
[1m+++ b/src/stores/user.js[m
[36m@@ -0,0 +1,20 @@[m
[32m+[m[32mimport { defineStore } from 'pinia'[m
[32m+[m
[32m+[m[32mexport const useUserStore = defineStore('user', {[m
[32m+[m[32m  state: () => ({[m
[32m+[m[32m    users: [][m
[32m+[m[32m  }),[m
[32m+[m[32m  actions: {[m
[32m+[m[32m    addUser: (user) => {[m
[32m+[m[32m      this.users.push(user);[m
[32m+[m[32m    }[m
[32m+[m[32m  },[m
[32m+[m[32m  getters: {[m
[32m+[m[32m    getUsers: (state) => {[m
[32m+[m[32m      state.users;[m
[32m+[m[32m    },[m
[32m+[m[32m    getUsersLength: (state) => {[m
[32m+[m[32m      state.users.lenght;[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m})[m
[1mdiff --git a/src/views/AboutView.vue b/src/views/AboutView.vue[m
[1mindex cf0b513..756ad2a 100644[m
[1m--- a/src/views/AboutView.vue[m
[1m+++ b/src/views/AboutView.vue[m
[36m@@ -1,10 +1,15 @@[m
[31m-<script>[m
[31m-</script>[m
[31m-[m
 <template>[m
[31m-  <main>[m
[31m-    <h1>About View</h1>[m
[31m-  </main>[m
[32m+[m[32m  <div class="about">[m
[32m+[m[32m    <h1>This is an about page</h1>[m
[32m+[m[32m  </div>[m
 </template>[m
 [m
[31m-<style></style>[m
[32m+[m[32m<style>[m
[32m+[m[32m@media (min-width: 1024px) {[m
[32m+[m[32m  .about {[m
[32m+[m[32m    min-height: 100vh;[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    align-items: center;[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m[32m</style>[m
[1mdiff --git a/src/views/UsuarioView.vue b/src/views/AgregarPerfilView.vue[m
[1msimilarity index 100%[m
[1mrename from src/views/UsuarioView.vue[m
[1mrename to src/views/AgregarPerfilView.vue[m
[1mdiff --git a/src/views/DynamicViewContainer.vue b/src/views/DynamicViewContainer.vue[m
[1mdeleted file mode 100644[m
[1mindex ea2f7c6..0000000[m
[1m--- a/src/views/DynamicViewContainer.vue[m
[1m+++ /dev/null[m
[36m@@ -1,27 +0,0 @@[m
[31m-<template>[m
[31m-    <div>[m
[31m-      <DynamicViewSelector @cambiar-vista="cambiarVista" />[m
[31m-      <component :is="vistaActual" />[m
[31m-    </div>[m
[31m-  </template>[m
[31m-  [m
[31m-  <script>[m
[31m-  import DynamicViewSelector from '@/components/DynamicViewSelector.vue';[m
[31m-  [m
[31m-  export default {[m
[31m-    components: {[m
[31m-      DynamicViewSelector[m
[31m-    },[m
[31m-    data() {[m
[31m-      return {[m
[31m-        vistaActual: 'HomeView'[m
[31m-      }[m
[31m-    },[m
[31m-    methods: {[m
[31m-      cambiarVista(vista) {[m
[31m-        this.vistaActual = `${vista.charAt(0).toUpperCase()}${vista.slice(1)}View`;[m
[31m-      }[m
[31m-    }[m
[31m-  }[m
[31m-  </script>[m
[31m-  [m
\ No newline at end of file[m
[1mdiff --git a/src/views/EditarPerfilView.vue b/src/views/EditarPerfilView.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/src/views/EliminarPerfilView.vue b/src/views/EliminarPerfilView.vue[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/src/views/HomeView.vue b/src/views/HomeView.vue[m
[1mindex c578d68..6bb706f 100644[m
[1m--- a/src/views/HomeView.vue[m
[1m+++ b/src/views/HomeView.vue[m
[36m@@ -1,8 +1,9 @@[m
[31m-<script>[m
[32m+[m[32m<script setup>[m
[32m+[m[32mimport TheWelcome from '../components/TheWelcome.vue'[m
 </script>[m
 [m
 <template>[m
   <main>[m
[31m-    <h1>Home View</h1>[m
[32m+[m[32m    <TheWelcome />[m
   </main>[m
 </template>[m
[1mdiff --git a/src/views/MoviesView.vue b/src/views/MoviesView.vue[m
[1mdeleted file mode 100644[m
[1mindex da6e649..0000000[m
[1m--- a/src/views/MoviesView.vue[m
[1m+++ /dev/null[m
[36m@@ -1,26 +0,0 @@[m
[31m-<script>[m
[31m-import { storeToRefs } from "pi