import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import UsuarioView from '../views/users/UsuarioView.vue'
import MoviesView from '../views/movies/MoviesView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/usuario',
    name: 'usuario',
    component: UsuarioView
  },
  {
    path: '/movies',
    name: 'movies',
    component: MoviesView
  }
]

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes
})

export default router
