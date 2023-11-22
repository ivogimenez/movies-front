import { defineStore } from 'pinia'

export const useMovieStore = defineStore('movie', {
  state: () => ({ movies: [] }),
  getters: {
    getMovies: (state) => state.movies
    ,
    getMoviesLength: (state) => {
      state.movies.lenght;
    }
  },
  actions: {
    setMovies(movieList) {
      this.movies = movieList;
    },
    retrieveMovies(){
      return this.movies;
    }
  }

})
