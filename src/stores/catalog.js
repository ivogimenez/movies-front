import { defineStore } from 'pinia'

export const useCatalogStore = defineStore('catalog', {
  state: () => ({ catalog: [] }),
  getters: {
    getCatalog: (state) => state.catalog
    ,
    getCatalogLength: (state) => {
      state.catalog.lenght;
    }
  },
  actions: {
    addToCatalog(movie) {
      this.catalog.push(movie);
      console.log('Pelicula agregada',this.catalog);
    },
    removeToCatalog(movie) {
      const indexToRemove = this.catalog.findIndex(item => item.id === movie.id);

      if (indexToRemove !== -1) {
        this.catalog.splice(indexToRemove, 1);
        console.log('Pelicula eliminada',this.catalog);
      } else {
        console.log('No se encontró ninguna película con el id proporcionado en el catálogo.');
      }
    },
    retrieveCatalog() {
      return this.catalog;
    }
  }

})
