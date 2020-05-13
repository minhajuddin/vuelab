<template>
<div class='pokemon-details' v-if=pokemon>
  <h2> {{ pokemon.name }} </h2>
  <img :src='pokemon.sprites.front_default' />
  <img :src='pokemon.sprites.back_default' />
</div>
</template>

<script charset="utf-8">
export default {
  props: ['pokemon'],
         computed: {
           display(){
             return this.pokemon.name + "!!"
           }
         }
}
</script>

<style scoped>
.pokemon-details {
  border: solid 1px #eee;
  padding: 10px;
}
</style>
