<template>
<div>
  <Message :message='message' />
  <div className="container">
    <div className="row">
      <div className="column">
        <PokemonList :pokemons='pokemons' :selectPokemon='selectPokemon' />
      </div>
      <div className="column-50">
        <PokemonDetails :pokemon='selectedPokemon' />
      </div>
    </div>
  </div>
</div>
</template>

<script charset="utf-8">
import Message from "./Message.vue"
import PokemonList from "./PokemonList.vue"
import PokemonDetails from "./PokemonDetails.vue"
export default {
  name: "App",
  data(){
    return {
      message: "Welcome to your TODO list",
      pokemons: [{
        name: 'Bulbasaur'
      }],
      selectedPokemon: undefined
    }
  },
  methods: {
    selectPokemon(pokemon){
      this.selectedPokemon = pokemon
    }
  },
  components: {
    Message,
    PokemonList,
    PokemonDetails
  }
}
</script>
