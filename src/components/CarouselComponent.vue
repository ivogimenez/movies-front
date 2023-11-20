<template>
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
</template>
  
<script>
import { defineComponent } from 'vue';
import { Carousel, Navigation, Pagination, Slide } from 'vue3-carousel';

import 'vue3-carousel/dist/carousel.css';

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
                {
                    img: "https://image.tmdb.org/t/p/w500/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg"
                },
                {
                    img:"https://image.tmdb.org/t/p/w500/vBZ0qvaRxqEhZwl6LWmruJqWE8Z.jpg"
                }
                // Add more image URLs as needed
            ],
        };
    },
});
</script>
  
<style>
.carousel__item {
    min-height: 400px;
    width: 90%;
    background-color: rgba(0, 0, 0, 0.209);
    color: var(--vc-clr-white);
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
  