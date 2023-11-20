<template>
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            Géneros disponibles
        </button>
        <ul class="dropdown-menu form-check-inline filter-dropdown">
            <li v-for="category in categories" :key="category.id">
                <input class="form-check-input" type="checkbox" :id="category.id" v-model="selectedFilters"
                    :value="category.id" />
                <label class="form-check-label" :for="category.id">
                    {{ category.label }}
                </label>
            </li>
            <li>
                <button class="btn btn-link" type="button" aria-expanded="false">
                    Aplicar filtro
                </button>
            </li>
        </ul>

    </div>
</template>
  
<script>
import axios from 'axios';

export default {
    name: 'SearchComponent',
    data() {
        return {
            categories: [],
            selectedFilters: [],
        };
    },
    mounted() {
        // Realiza la solicitud para obtener las categorías al montar el componente
        this.fetchCategories();
    },
    methods: {
        async fetchCategories() {
            try {
                const response = await axios.get('URL_DE_TU_API/categories'); // Reemplaza 'URL_DE_TU_API' con la URL real de tu API
                //this.categories = response.data;
            } catch (error) {
                console.error('Error al obtener las categorías:', error);
                this.categories = [{ id: 1, label: 'Accion' }, { id: 2, label: 'Comedia' }, { id: 3, label: 'Drama' }];
            }
        },
        applyFilters() {
            // Aquí puedes manejar la lógica para aplicar los filtros seleccionados
            console.log('Filtros seleccionados:', this.selectedFilters);
        },
    },
};
</script>
  
<style scoped>
/* Agrega estilos adicionales si es necesario */
.filter-dropdown,
.form-check-label {
    padding-left: 10px;
}

.dropdown-menu{
    min-width: 180px;
}
</style>
  