import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import PerfilView from '../views/PerfilView.vue'
import AgregarPerfilView from '../views/AgregarPerfilView.vue'
import EditarPerfilView from '../views/EditarPerfilView.vue'
import EliminarPerfilView from '../views/EliminarPerfilView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../views/AboutView.vue')
    },
    {
      path: '/',
      name: 'perfil',
      component: PerfilView
    },
    {
      path: '/',
      name: 'editar-perfil',
      component: EditarPerfilView
    },
    {
      path: '/',
      name: 'agregar-perfil',
      component: AgregarPerfilView
    },
    {
      path: '/',
      name: 'eliminar-perfil',
      component: EliminarPerfilView
    },
  ]
})

export default router
