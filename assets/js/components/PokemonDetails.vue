<template>
<div v-if=pokemon>
  <h2> {{ pokemon.name }} </h2>
  <p>
  Description
  </p>
</div>
</template>

<script charset="utf-8">
export default {
  props: ['pokemon']
}
</script>
