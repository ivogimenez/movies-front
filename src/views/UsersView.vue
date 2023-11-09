<script>
import { storeToRefs } from "pinia";
// import { useUserStore } from '../stores/user'

export default {
    // components: { IonPage, IonContent },
    setup() {
        // const store = useUserStore();
        // const { getUsers, getUsersLenght, addUser } = storeToRefs(store);
        // return { getUsers, getUsersLenght, addUser };
    }
}
</script>

<template>
    <main>
        <h1>Users View</h1>

        <!-- {{ UserStore.Users[0].titulo }} -->
        <!-- <ul>
      <li v-for="User in UserStore.Users" :key="User.id">
        {{ User.titulo }}
      </li>
    </ul> -->
    </main>
</template>
