<template>
  <div class="catalog">


    <h3>Peliculas en tu catalogo</h3>
    <p>Revisa las peliculas de tu lista de deseados y elimina las que ya viste</p>

    <div class="row">
      <div class="col" v-for="movie in catalog" :key="movie">
        <MovieCardComponent :movie="movie" />
      </div>
    </div>

  </div>
</template>
  
<script>
import MovieCardComponent from '../components/MovieCardComponent.vue';
import { useCatalogStore } from '../stores/catalog';

export default {
  name: "CatalogView",
  components: {
    MovieCardComponent
  },
  props: ['movie'],
  setup() {
    const catalogStore = useCatalogStore();
    const { addToCatalog, removeToCatalog, retrieveCatalog } = catalogStore;
    return { addToCatalog, removeToCatalog, retrieveCatalog };
  },
  data() {
    return {
      catalog: []
    }
  }, mounted() {
    // Realiza la solicitud para obtener las categorías al montar el componente
    this.getCatalogFromGlobalState();
  },
  methods: {
    getCatalogFromGlobalState() {
      this.catalog = useCatalogStore().catalog;
    }

  }
};
</script>
  
<style scoped></style>
  


<!-- Viejo IndexView.vue
   
const movieStore = useMovieStore();
const userStore = useUserStore();

const { getMovies, getMoviesLength, addMovie } = storeToRefs(movieStore);
const { getUsers, getUsersLength, addUser } = storeToRefs(userStore);


const usuario = {
  nombre: 'Kevin Mercs',
  genero: 'Accion',
  peliculasFavoritas: [
    { id: 1, titulo: 'JW1' },
    { id: 2, titulo: 'T2' },
    { id: 3, titulo: 'R3' }
  ]
};

const darLike = (peliculaId) => {
  const pelicula = usuario.peliculasFavoritas.find(p => p.id === peliculaId);
  if (pelicula) {
    pelicula.likes = (pelicula.likes || 0) + 1;
  }
}; -->