import { createRouter, createWebHistory } from 'vue-router';
import LoginView from '../views/LoginView.vue';
import VueCookies from 'vue-cookies';
const routes = [
  {
    path: '/',
    name: 'login-view',
    component: LoginView,
    beforeEnter: (to, from, next) => {
      // Verifica si la cookie 'session' está presente
      if (VueCookies.get('session')) {
        // Si está presente, redirige a /home
        next('/home');
      } else {
        // Si no está presente, permite el acceso a la vista de login
        next();
      }
    },
  },
  {
    path: '/about',
    name: 'about-view',
    component: () => import('../views/AboutView.vue'),
  },
  {
    path: '/home',
    name: 'home-view',
    component: () => import('../views/HomeView.vue'),
    beforeEnter: (to, from, next) => {
      // Verifica si la cookie 'session' está presente
      if (VueCookies.get('session')) {
        // Si está presente, permite el acceso a la vista de home
        next();
      } else {
        // Si no está presente, redirige a '/'
        next('/');
      }
    },
  },
  {
    path: '/profile',
    name: 'profile-view',
    component: () => import('../views/ProfileView.vue'),
    beforeEnter: (to, from, next) => {
      // Verifica si la cookie 'session' está presente
      if (VueCookies.get('session')) {
        // Si está presente, permite el acceso a la vista de perfil
        next();
      } else {
        // Si no está presente, redirige a '/'
        next('/');
      }
    },
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
