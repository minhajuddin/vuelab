<template>
<div>
  <ul>
    <li v-for='pokemon in pokemons' @click='selectPokemon(pokemon)'>
      {{ pokemon.name }}
    </li>
  </ul>
</div>
</template>

<script>
export default {
  props: ['pokemons'],
         methods: {
           selectPokemon(pokemon){
             console.log("selecting pokemon")
             this.$emit('selectPokemon', pokemon)
           }
         }
}
</script>

<style scoped>
ul {
  list-style: none;
}
li {
  padding: 5px 10px;
  background-color: #0074D9;
}
</style>
