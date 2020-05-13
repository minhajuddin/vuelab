<template>
<div>
  <Message :message='message' />
  <div class="container">
    <div class="row">
      <div class="column">
        <PokemonList :pokemons='pokemons' :selectPokemon='selectPokemon' />
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
    selectPokemon(pokemon){
      this.$buefy.toast.open({message: `Getting ${pokemon.name}...`, type: 'is-success'})
      /*this.message = `Getting ${pokemon.name}...`*/
      fetch(pokemon.url)
      .then(x => x.json())
      .then(x => {
        this.selectedPokemon = x
        this.message = 'Pokemon ready'
        })
    },
    getPokemons(){
      this.message = "Getting your pokemons ..."
      fetch("https://pokeapi.co/api/v2/pokemon")
      .then(x => x.json())
      .then(x => {
        this.message = 'Pokemons loaded'
        this.pokemons = x.results
      })
    },
    save(pokemon){
      this.message = "Saving ...."
      console.log("SAVING", pokemon)
      this.message = "Ready"
    }
  },
 created(){
   this.getPokemons()
 },
  components: {
    Message,
    PokemonList,
    PokemonDetails
  }
}
</script>
