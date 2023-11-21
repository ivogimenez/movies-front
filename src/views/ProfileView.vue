<template>
  <div v-if="isLoggedIn" class="container mt-4">
    <h1 class="mb-4">Perfil de usuario</h1>

    <!-- Resto del contenido del componente -->
  </div>
  <div v-else>
    <LoginRequiredComponent />
  </div>
</template>

<script>
import axios from 'axios';
import LoginRequiredComponent from '../components/LoginRequiredComponent.vue';

export default {
  name: 'ProfileComponent',
  components: {
    LoginRequiredComponent,
  },
  data() {
    return {
      isLoggedIn: false, // Ajusta esto según tu lógica de autenticación
      user: {
        // Datos del usuario
      },
      newPassword: '',
      newDescription: '',
    };
  },
  created() {
  
    this.checkAuthentication();
  },
  methods: {
    async checkAuthentication() {
    
      try {
        const response = await axios.get('URL_DE_TU_API/usuario'); 
        this.user = response.data;
        this.isLoggedIn = true;
      } catch (error) {
       
        console.error('Usuario no autenticado:', error);
        this.isLoggedIn = false;
      }
    },
    async changePassword() {
  
      console.log(`Contraseña cambiada a: ${this.newPassword}`);
      this.newPassword = '';
    },
    async updateDescription() {
  
      console.log(`Nueva Descripción: ${this.newDescription} para el perfil del usuario`);
      this.newDescription = '';
    
    },
    async deleteDescription() {
    
      console.log('Descripción eliminada para el perfil del usuario');
   
    },
  },
};
</script>

<style scoped>

</style>
