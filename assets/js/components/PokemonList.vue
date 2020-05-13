<template>

<ul>
<li v-for='pokemon in pokemons' :key="pokemon.id">
{{pokemon.name}}
</li>
</ul>

</template>

<script>
export default {
  data() {
    return {
      pokemons: [
      {id: 1, name: "Bulbasaur"},
      {id: 2, name: "Doraemon"}
      ]
    }
  }
}
</script>
