<template>
    <div>
     
        <div  v-for="(item, i) in this.items" :key="i">
            <input
                class="radio"
                type="radio"
                :id="`${$attrs.name}${i}`"
                :name="$attrs.name"
                :value="item.value">
            <label
                :class="{ point: true, show: activeIndex == i }"
                :for="`${$attrs.name}${i}`"
                @click="activeIndex = i"
                
            >{{ item.name }}
            </label>
            
    <!-- <div> вывод {{item.group}}</div> -->
        
            <Wi_radio_input_sub 
                @input_sub="input_sub"
                :items="item.group"
                :nameGrup="'nameGrup'+`${i}`"
            />
    

        </div>
  </div>
</template>

<script>
import Wi_radio_input_sub from "./wi-radio-input-sub.vue"

export default {
    name: 'wi-radio-input',
    inheritAttrs: true,
    data: () => ({
        activeIndex: null,
    }),
    components: {
        Wi_radio_input_sub
    }, 
    props: {
        items: {
            type: Array,
            default: () => []
        }
    },
    methods: {
        input_sub(select_item) {
             
            // console.log("select_item "+select_item)
            this.$emit('input', select_item)
            
        },
        klick() {
            console.log("cdfs");

        }

    },
    watch: {
        activeIndex(newVal) {
            this.$emit('input', this.items[newVal].value)
        }
    }
}
</script>
<style >
    .sub_block {
        margin-top: 30px;
    }
    .show {
        padding: 5px 10px;
        background: #cccccc8c;
        
    }
</style>