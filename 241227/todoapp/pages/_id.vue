<template>
   {{todo}}

</template>
<script setup>
   import {useRouter} from '#vue-router';
   const router = useRouter();
   
   defineProps({
      todo: Object 
   })
</script>