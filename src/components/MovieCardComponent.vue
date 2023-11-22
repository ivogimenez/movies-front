<template>
    <div class="movie-card">
        <div class="card" style="width: 13rem;">
            <img class="card-img-top" :alt="title" :src="movie.img">
            <div class="card-body">
                <h5 class="card-title"> {{ movie.title }}</h5>
            </div>
            <div class="btn-container d-grid gap-2">
                <button class="btn btn-primary"> Agregar a favoritos</button>
                <button class="btn btn-danger"> Eliminar de favoritos</button>
            </div>
        </div>
    </div>
</template>

<script>

export default {
    name: "MovieCardComponent",
    props: ['movie']
}   
</script>

<style scoped>
.card {
    border: none;
    padding: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 8px 16px rgba(0, 0, 0, 0.1);
}

.card-title {
    text-align: center;
}
.movie-card {
    margin-top: 1.5em;
}
</style>