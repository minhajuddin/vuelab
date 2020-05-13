<template>
<div>
  Yo
  <div class='count' :style='{ "font-size": `${10+currentCount}px` }'>{{ currentCount }}</div>
  <button @click='decrementCounter'>-</button>
  <button @click='incrementCounter'>+</button>
</div>

</template>

<script charset="utf-8">
export default {
  data() {
    return {currentCount: 0}
  },
  methods: {
    incrementCounter(){
      this.currentCount++
    },
    decrementCounter(){
      this.currentCount--
    }
  }
}
</script>
