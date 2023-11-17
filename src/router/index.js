import { createRouter, createWebHistory } from 'vue-router';
import IndexView from '../views/IndexView.vue';
import HomeView from '../views/HomeView.vue';

const routes = [
  {
    path: '/',
    name: 'index',
    component: IndexView,
  },
  {
    path: '/home',
    name: 'home-view', 
    component: HomeView,
  },

];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
