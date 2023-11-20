<!-- En tu componente o plantilla Vue -->
<template>
    <div class="footer">

        <footer class="bg-dark text-white text-center py-3">
            <ul class="list-unstyled d-flex justify-content-center">
                <li>Instituto terciario ORT</li>
                <li>Nicolas Kevorkian, Nicolas Fernandez, Amparo Guisamonde, Kevin Mercs, Ivan Gimenez.</li>
                <li>Buenos Aires, Argentina</li>
            </ul>
            <p>&copy; 2023 MoviesDB. Todos los derechos reservados.</p>
        </footer>
    </div>
</template>
  

  

<script>
export default {
    name: "FooterComponent"
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

ul {
    list-style: none;
    display: flex;
    flex-direction: column;
    /* Oculta los bullets */
}

.list-unstyled {
    padding-left: 0;
    /* Elimina el espacio izquierdo por defecto de la lista no ordenada */
}

.d-flex {
    display: flex;
}

.justify-content-center {
    justify-content: center;
}
</style>