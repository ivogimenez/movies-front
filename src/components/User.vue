<template>
    <div>
      <h1>User Component</h1>
  
      //seccion de perfiles
      <div v-for="perfil in perfiles" :key="perfil.id" class="perfil">
        //<img :src="perfil.avatar" :alt="perfil.nombre" class="avatar">
        <div class="informacion">
          <h2>{{ perfil.nombre }}</h2>
          <p>{{ perfil.descripcion }}</p>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        perfiles: [
          {
            id: 1,
            nombre: 'KEvin',
            descripcion: 'Programador de front',
            avatar: 'https://imgs.search.brave.com/vbyXOrh_C4_dUUKe-iHHnBe71yJ6cWZHDSy8MfUifI4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vaW1ncy5o/aXBlcnRleHR1YWwu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIzLzEwL3Rlcm1p/bmF0b3ItMi5qcGc_/Zml0PTEyMDAsNjc1/JnF1YWxpdHk9NTAm/c3RyaXA9YWxsJnNz/bD0x'
          },
          {
            id: 2,
            nombre: 'Ivo',
            descripcion: 'Programador de back',
            avatar: 'https://imgs.search.brave.com/vbyXOrh_C4_dUUKe-iHHnBe71yJ6cWZHDSy8MfUifI4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vaW1ncy5o/aXBlcnRleHR1YWwu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIzLzEwL3Rlcm1p/bmF0b3ItMi5qcGc_/Zml0PTEyMDAsNjc1/JnF1YWxpdHk9NTAm/c3RyaXA9YWxsJnNz/bD0x'
          },
        ]
      };
    }
  };
  </script>
  
  <style scoped>
  .perfil {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
  }
  
  .avatar {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    margin-right: 15px;
  }
  </style>
  