<template>

<div>
  <PokemonList />
  <Counter />
</div>
</template>

<script charset="utf-8">

import Message from './Message.vue';
import List from './List.vue';
import PokemonList from './PokemonList.vue';
import Counter from './Counter.vue';

export default {
  name: "App",
  components: { Message, List, PokemonList, Counter}
}
</script>

