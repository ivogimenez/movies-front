<template>
    <div class="card mx-auto card-comp">
        <div class="card-body">
            <h2>{{ this.title }}</h2>

            <form>
                <div class="mb-3 mt-2" v-if="creatingAccount">
                    <label for="username">Nombre de usuario</label>
                    <input type="text" class="form-control" id="username" placeholder="Ingrese su nombre de usuario">
                </div>

                <div class="mb-3 mt-2">
                    <label for="email">Correo electronico</label>
                    <input type="email" class="form-control" id="email" placeholder="Ingresa tu correo">
                </div>

                <div class="mb-3 mt-2">
                    <label for="password">Contraseña</label>
                    <input type="password" class="form-control" id="password" placeholder="Ingresa tu clave">
                </div>
            </form>

            <div class="d-grid" v-if="!creatingAccount">
                <button class=" btn btn-primary" @click="login">Iniciar sesión</button>
                <!-- <button class="btn btn-link" @click="login">¿Olvidaste tu contraseña?</button> -->
                <hr>
                <button class="btn btn-success" @click="register('Registrarse')">Registrarse</button>
            </div>

            <div class="d-grid" v-if="creatingAccount">
                <button class="btn btn-success" @click="createAccount">Crear cuenta</button>
                <hr>    
                <button class=" btn btn-primary" @click="register('Iniciar sesión')">Ya tengo cuenta</button>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "UserComponent",
    data() {
        return {
            title: 'Iniciar sesión',
            creatingAccount: false
        }
    },
    props: {
        user: {
            type: Object,
            required: true
        }
    },
    methods: {
        login() {
            console.log('login');
        },
        createAccount() {
            console.log('createAccount');
        },
        register(title) {
            this.title = title
            this.creatingAccount = !this.creatingAccount
        }
    }
}
</script>

<style scoped>
.card {
    border: none;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 8px 16px rgba(0, 0, 0, 0.1);
}
</style>