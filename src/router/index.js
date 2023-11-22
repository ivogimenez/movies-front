import { createRouter, createWebHistory } from 'vue-router';
import LoginView from '../views/LoginView.vue';
import VueCookies from 'vue-cookies';
const routes = [
  {
    path: '/',
    name: 'login-view',
    component: LoginView,
    beforeEnter: (to, from, next) => {
      if (VueCookies.get('session')) {
        next('/home');
      } else {
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
      if (VueCookies.get('session')) {
        next();
      } else {
        next('/');
      }
    },
  },
  {
    path: '/profile',
    name: 'profile-view',
    component: () => import('../views/ProfileView.vue'),
    beforeEnter: (to, from, next) => {
      if (VueCookies.get('session')) {
        next();
      } else {
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
