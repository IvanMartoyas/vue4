<template>
  <div id='app'>
    <p>Выбранное значение: <strong>{{ model }}</strong></p>
    
    <wi-radio-input name='myRadioGroup'  :items='group' v-model="model"></wi-radio-input>
  </div>
</template>

<script>
import wiRadioInput from './components/wi-radio-input.vue'
import data from '../public/data.json'

export default {
  name: 'App',
  components: {
    wiRadioInput
  },
  data: function () {
    return {
      input: '.*',
      input_sub: '',
      group: data.group,
      model: null,
    }
  },
  created() {
    this.model = this.defaultValue;
    console.log(this.input)
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  margin-top: 60px;
}
</style>