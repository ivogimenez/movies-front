import { defineStore } from 'pinia'

export const useUserStore = defineStore('user', {
  state: () => ({
    users: []
  }),
  actions: {
    addUser: (user) => {
      this.users.push(user);
    }
  },
  getters: {
    getUsers: (state) => {
      state.users;
    },
    getUsersLength: (state) => {
      state.users.lenght;
    }
  }
})
