<template>
<div>
  <Message :message='message' />
  <div class="container">
    <div class="row">
      <div class="column">
        <PokemonList :pokemons='pokemons' @selectPokemon='selectPokemon' />
      </div>
      <div class="column column-50">
        <PokemonDetails :pokemon='selectedPokemon' @savePokemon='save' />
      </div>
    </div>
  </div>
</div>
</template>

<script charset="utf-8">
import Message from "./Message.vue"
import PokemonList from "./PokemonList.vue"
import PokemonDetails from "./PokemonDetails.vue"
import * as axios from 'axios';


export default {
  name: "App",
  data(){
    return {
      message: "Welcome to your TODO list",
      pokemons: [{
        name: 'Bulbasaur',
        size: 'big'
      },{
        name: 'Doraemon',
        size: 'small'
      }
      ],
      selectedPokemon: undefined
    }
  },
  methods: {
    async selectPokemon(pokemon){
      this.$buefy.toast.open({message: `Getting ${pokemon.name}...`, type: 'is-success'})
      const response = await axios.get(pokemon.url)
      this.selectedPokemon = response.data
    },
    async getPokemons(){
      this.message = "Getting your pokemons ..."
      const response = await axios.get('https://pokeapi.co/api/v2/pokemon')
      this.message = 'Pokemons loaded'
      this.pokemons = response.data.results
      console.log(response)
    },
    save(pokemon){
      this.message = "Saving ...."
      console.log("SAVING", pokemon)
      this.message = "Ready"
    }
  },
 async created(){
   await this.getPokemons()
 },
  components: {
    Message,
    PokemonList,
    PokemonDetails
  }
}
</script>
