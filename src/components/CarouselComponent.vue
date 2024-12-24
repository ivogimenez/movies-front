<template>
    <div class="carousel">

        <Carousel>
            <Slide v-for="movie in movies" :key="movie">
                <div class="carousel__item">
                    <img :src="movie.img" alt="Slide movie">
                </div>
            </Slide>

            <template #addons>
                <Navigation />
                <Pagination />
            </template>
        </Carousel>
    </div>
</template>
  
<script>
import { defineComponent } from 'vue';
import { Carousel, Navigation, Pagination, Slide } from 'vue3-carousel';

import 'vue3-carousel/dist/carousel.css';
import _ from 'lodash';
import axios from 'axios';

export default defineComponent({
    name: 'CarouselComponent',
    components: {
        Carousel,
        Slide,
        Pagination,
        Navigation,
    },
    data() {
        return {
            movies: [
            ],
            TMBD_API_KEY: import.meta.env.VITE_TMBD_API_KEY,
            TMBD_API_URL: import.meta.env.VITE_TMBD_API_URL,
            VITE_TMBD_IGM_BASE_URL: import.meta.env.VITE_TMBD_IGM_BASE_URL,
        };
    },
    mounted() {
        // Realiza la solicitud para obtener las categorías al montar el componente
        this.fetchMovies();
    },
    methods: {
        async fetchMovies() {
            try {
                let config = {
                    method: 'get',
                    maxBodyLength: Infinity,
                    url: `${this.TMBD_API_URL}/movie/popular?language=es&api_key=${this.TMBD_API_KEY}`,
                    headers: {}
                };
                const response = await axios.request(config)


                const moviesImg = _.map(response.data.results, movie => {
                    const img = _.pick(movie, 'poster_path')
                    const { poster_path } = img

                    return {
                        img: `${this.VITE_TMBD_IGM_BASE_URL}${poster_path}`
                    }
                })

                this.movies = moviesImg;
            } catch (error) {
                console.error('Error al obtener las categorías:', error);
            }
        },
    },
});
</script>
  
<style>
.carousel__item {
    min-height: 400px;
    width: 90%;
    font-size: 20px;
    border-radius: 8px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.carousel__slide {
    padding: 10px;
}

.carousel__prev,
.carousel__next {
    box-sizing: content-box;
    /* border: 5px solid white; */
}
</style>
  