<template>
    <div>
        <p v-html="rowHtml"></p>
        
        <h3 v-once>{{name}}</h3>
        <h3>{{a + b}}</h3>

        <h3>{{ok?"yes":"No"}}</h3>
        <button v-bind:disabled="disableBtn" v-on:click="updateText">Click me</button>
    </div>
</template>

<script>
export default {
    name:'Home',
    data()
    {
        return {
            name:'Amit',
            a:10,
            b:20,
            ok:true,
            rowHtml:"<h1>Template in Vue.js</h1>",
            disableBtn:true
        }
    },methods:{
        updateText()
        {
            this.name="Raj"
        }
    }
};
</script>
