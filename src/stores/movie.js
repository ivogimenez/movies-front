import { defineStore } from 'pinia'

export const useMovieStore = defineStore('movie', {
  state: () => ({
    movies: [{
      titulo: 'Hola XD',
      anioLanzamiento: null,
      genero: '',
      director: '',
      creador: '',
      descripción: ''
    }]
  }),
  actions: {
    addMovie: (movie) => {
      this.movies.push(movie);
    }
  },
  getters: {
    getMovies: (state) => {
      state.movies;
    },
    getMoviesLength: (state) => {
      state.movies.lenght;
    }
  }
})
