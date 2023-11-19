import './assets/main.css'
import './assets/bootstrap.min.css'
import './assets/bootstrap.bundle.min.js'
import './assets/custom_styles.css'
import 'material-icons/iconfont/material-icons.css'

import { createApp } from 'vue'
import { createPinia } from 'pinia'

import App from './App.vue'
import router from './router'

const app = createApp(App)

app.use(createPinia())
app.use(router)
router.isReady().then(() => {
    app.mount('#app');
});
