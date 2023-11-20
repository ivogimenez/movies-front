<template>
    <nav class="navbar navbar-expand-lg bg-primary">
        <div class="container justify-content-evenly">

            <router-link to="/" class="nav-link active" aria-current="page">
                <span class="material-icons">
                    home
                </span>
            </router-link>

            <router-link to="/movies" class="nav-link">
                <span class="material-icons">
                    movie
                </span>
            </router-link>

            <router-link to="/about" class="nav-link">
                <span class="material-icons">
                    info
                </span>
            </router-link>


            <router-link to="/profile" class="nav-link">
                <span class="material-icons">
                    person
                </span>
            </router-link>


            <router-link to="/catalog" class="nav-link">
                <span class="material-icons">
                    video_library
                </span>
            </router-link>



        </div>
    </nav>
</template>

<script>
export default {
    name: "NavComponent"
}
</script>

<style scoped>
.material-icons {
    color: white;
    font-size: 1.4em;
    background-color: rgba(182, 180, 180, 0.486);
    padding: 0.3em;
    margin: 0.1em;
    border-radius: 50%;
}
</style>