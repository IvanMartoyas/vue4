<template>
    <div class="sub_option" >
         <div  v-for="(item, i) in this.items" :key="i">
            <input
                class="radio"
                type="radio"
                :id="`${nameGrup}${i}`"
                :name="nameGrup"
                :value="item.value">
            <label
                :class="{ point: true, show: activeIndexSub == i }"
                :for="`${nameGrup}${i}`"
                @click="activeIndexSub = i"
            >{{ item.name }}
            </label>

        </div>
        
    </div>
</template>
 
<script>

export default {
    name: 'wi-radio-input-sub',
    inheritAttrs: true,
    data: () => ({
        activeIndexSub: null,
        
    }),
    props: {
        items: {
            type: Array,
            default: () => []
        },
        nameGrup: {

        }
    },
    watch: {
        activeIndexSub(newVal) {
            // console.log(groupItem)
            
            this.$emit('input_sub', this.items[newVal].value)
        }
    }
}
</script>

<style scoped>
    .sub_option {
        padding-top: 15px;
        padding-bottom: 30px;
        padding-left: 40px; 
        margin-bottom: 20px;
    }
    .show {
        padding: 5px 10px;
        background: #cccccc8c;
        
    }
    .radio {

    }
</style>