<template>
  <div v-if="isLoggedIn" class="container mt-4">
    <h1 class="mb-4">Perfil de usuario</h1>

    <!-- Resto del contenido del componente -->
    <div>
      <h2>Cambiar contraseña</h2>
      <input type="password" v-model="newPassword" placeholder="Nueva Contraseña" />
      <button @click="changePassword">Cambiar contraseña</button>
    </div>

    <div>
      <h2>Actualizar Descripción</h2>
      <input v-model="newDescription" placeholder="Nueva Descripción" />
      <button @click="updateDescription">Actualizar Descripción</button>
    </div>

    <div>
      <h2>Eliminar Descripción</h2>
      <button @click="deleteDescription">Eliminar Descripción</button>
    </div>

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

      try{
        const response = await axios.post("aca va la URL/", {
        newPassword: this.newPassword,
        });
        console.log(`La contraseña se modificó con éxito, nueva contraseña: ${this.newPassword}`, response.data);
        this.newPassword = '';
      }catch(error){
        console.error(`Error al modificar la contraseña:`, error);
      }

    },
    async updateDescription() {
      try{
        const response = await axios.post(`aca va la URL/`, {
          newDescription: this.newDescription,
        });
      console.log(`Nueva Descripción: ${this.newDescription} para el perfil del usuario`);
      this.newDescription = '';
      }catch(error){
        console.error(`Error al actualizar la descripción:`, error);
      }
    },
    async deleteDescription() {
    try{
      const response = await axios.delete(`aca va la URL/`);
      console.log('Descripción eliminada para el perfil del usuario');
    }catch(error){
      console.error(`Error al eliminar la descripción:`, error);
    }
   
    },
  },
};
</script>

<style scoped>

</style>
