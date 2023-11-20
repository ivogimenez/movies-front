<template>
    <nav class="navbar navbar-expand-lg bg-primary">
        <div class="container justify-content-evenly">

            <router-link to="/" class="nav-link active" aria-current="page">
                <div class="icon-container">
                    <span class="material-icons">
                        home
                    </span>
                    <h6>Home</h6>
                </div>
            </router-link>

            <router-link to="/movies" class="nav-link">
                <div class="icon-container">

                    <span class="material-icons">
                        movie
                    </span>
                    <h6>Movies</h6>
                </div>
            </router-link>

            <router-link to="/about" class="nav-link">
                <div class="icon-container">
                    <span class="material-icons">
                        info
                    </span>
                    <h6>About</h6>
                </div>
            </router-link>


            <router-link to="/profile" class="nav-link">
                <div class="icon-container">

                    <span class="material-icons">
                        person
                    </span>
                    <h6>Profile</h6>
                </div>
            </router-link>


            <router-link to="/catalog" class="nav-link">
                <div class="icon-container">

                    <span class="material-icons">
                        video_library
                    </span>
                    <h6>Catalogo</h6>
                </div>
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

.icon-container{
    color: white;
    text-align: center;
}
</style>