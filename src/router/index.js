import { createRouter, createWebHistory } from 'vue-router';
import LoginView from '../views/LoginView.vue';

const routes = [
  {
    path: '/',
    name: 'login-view',
    component: LoginView,
  },
  {
    path: '/about',
    name: 'about-view',
    component: () => import('../views/AboutView.vue'),
  },
  {
    path: '/movies',
    name: 'movie-view',
    component: () => import('../views/MoviesView.vue'),
  },
  {
    path: '/home',
    name: 'home-view',
    component: () => import('../views/HomeView.vue'),
  },
  {
    path: '/profile',
    name: 'profile-view',
    component: () => import('../views/ProfileView.vue'),
  },
  {
    path: '/catalog',
    name: 'catalog-view',
    component: () => import('../views/CatalogView.vue'),
  }
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
