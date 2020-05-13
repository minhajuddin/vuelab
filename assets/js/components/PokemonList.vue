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
  props: ['pokemons', 'selectPokemon']
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
