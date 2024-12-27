<template>
   <v-col>
      hello world
   </v-col>
      <div>
         <input v-model="newTodoText" type="text" @keydown.enter="addTodo">
         <button @click="addTodo">add todo</button>
      </div>
      <li v-for="item in todoList" :key="item.id">
         <NuxtLink :to="`/${item.id}`" :todo="item">
            <
            {{ item.id }} : {{ item.text }}

         </NuxtLink>
      </li>
</template>

<script setup>
   const todoList = ref([])
   const id = ref(1)
   const newTodoText = ref('')

   function addTodo(text){
      if(newTodoText.value.trim() !== ''){
         todoList.value.push({id: id.value, text: newTodoText.value})
         id.value++;
         newTodoText.value = ''
      }
   }
</script>