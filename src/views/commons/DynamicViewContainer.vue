<template>
    <div>
      <DynamicViewSelector @cambiar-vista="cambiarVista" />
      <component :is="vistaActual" />
    </div>
  </template>
  
  <script>
  import DynamicViewSelector from '@/components/DynamicViewSelector.vue';
  
  export default {
    components: {
      DynamicViewSelector
    },
    data() {
      return {
        vistaActual: 'HomeView'
      }
    },
    methods: {
      cambiarVista(vista) {
        console.log(`${vista.charAt(0).toUpperCase()}${vista.slice(1)}View`)
        this.vistaActual = `${vista.charAt(0).toUpperCase()}${vista.slice(1)}View`;
      }
    }
  }
  </script>
  