<template>
    <div class="card mx-auto card-comp">
        <div class="card-body">
            <h2>{{ this.title }}</h2>

            <form>
                <div class="mb-3 mt-2">
                    <label for="username">Nombre de usuario</label>
                    <input type="text" class="form-control" id="username" v-model="username"
                        placeholder="Ingrese su nombre de usuario">
                </div>

                <div class="mb-3 mt-2">
                    <label for="password">Contraseña</label>
                    <input type="password" class="form-control" id="password" v-model="password"
                        placeholder="Ingresa tu clave">
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
import _ from 'lodash';
import axios from 'axios';
import VueCookies from 'vue-cookies'

export default {
    name: "UserComponent",
    data() {
        return {
            title: 'Iniciar sesión',
            creatingAccount: false,
            TMBD_API_URL: import.meta.env.VITE_TMBD_API_URL,
            TMBD_API_KEY: import.meta.env.VITE_TMBD_API_KEY,
            username: "",
            password: "",
            request_token: "",
            session_id: ""
        }
    },
    mounted() {
        this.getRequestToken();
    },
    computed: {
        isLoginFormValid() {
            return this.username.trim() !== "" && this.password.trim() !== "";
        },
    },
    methods: {
        getRequestToken() {
            let config = {
                method: 'GET',
                maxBodyLength: Infinity,
                url: `${this.TMBD_API_URL}/authentication/token/new?api_key=${this.TMBD_API_KEY}`,
                headers: {}
            };

            return axios.request(config)
                .then(({ data }) => {
                    this.request_token = data.request_token
                })
                .catch(error => {
                    console.log('Error al obtener el request token', error);
                });

        },
        generateSessionId() {
            let data = JSON.stringify({ "request_token": this.request_token })

            let config = {
                method: 'POST',
                maxBodyLength: Infinity,
                url: `${this.TMBD_API_URL}/authentication/session/new?api_key=${this.TMBD_API_KEY}`,
                headers: {
                    'Content-Type': 'application/json'
                },
                data
            };

            return axios.request(config)
                .then(({ data }) => data)
                .catch(error => { console.log('Error al obtener el session id', error) });

        },
        login() {
            if (!this.isLoginFormValid) {

                alert("Por favor, completa tanto el nombre de usuario como la contraseña.");
                return;
            }
            let data = JSON.stringify({ "username": this.username, "password": this.password, "request_token": this.request_token });

            let config = {
                method: 'POST',
                maxBodyLength: Infinity,
                url: `${this.TMBD_API_URL}/authentication/token/validate_with_login?api_key=${this.TMBD_API_KEY}`,
                headers: {
                    'Content-Type': 'application/json'
                },
                data
            };

            return axios.request(config)
                .then(() => {
                    this.generateSessionId()
                        .then(({ session_id }) => {
                            this.session_id = session_id

                            VueCookies.set('session', {
                                session_id: this.session_id,
                                username: this.username,
                                password: this.password
                            });
                            this.$router.push('/home');
                        })
                })
                .catch((error) => {
                    console.log(error);
                });
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