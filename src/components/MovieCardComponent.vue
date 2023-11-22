<template>
    <div class="movie-card">
        <div class="card" style="width: 13rem;">
            <img src="../assets/img/moviesdb.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Some quick</h5>
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
    props: ['id', 'title', 'poster_path']
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