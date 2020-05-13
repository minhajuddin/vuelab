<template>
<div>
<p class=message v-if='message'>{{ message }}</p>
</div>
</template>

<style scoped>
p.message {
  padding: 10px 20px;
  background-color: #FFDC00;
}
</style>

<script charset="utf-8">
export default {
  props: ['message']
}
</script>
