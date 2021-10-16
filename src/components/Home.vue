<template>
    <div>
        <nav>
            <ul>
                <li>
                    <router-link to="/">Home</router-link>
                </li><br>
                <li>
                    <router-link to="/about">About</router-link>
                </li>
            </ul>
        </nav>

        <p v-html="rowHtml"></p>
    
        <h1 v-if="currentUrl == 'http://abc.anviya.in/#/'">ABC Home Page</h1>
        <h1 v-else-if="currentUrl == 'http://xyz.anviya.in/#/'">XYZ Home Page</h1>
        <h1 v-else>default Home Page</h1>
        
        <!-- <h3 v-once>{{name}}</h3>
        <h3>{{a + b}}</h3>
6
        <h3>{{ok?"yes":"No"}}</h3>
        <button v-on:click="display">Click me</button> -->
    </div>
</template>

<script>
export default {
    name:'About',
    currentUrl : window.currentUrl,
    data()
    {
        return {
            name:'Amit',
            a:10,
            b:20,
            currentUrl : window.location,
            ok:true,
            rowHtml:"<h1>Hello Welcome in Vue.js</h1>",
            disableBtn:true,
        }
    },methods:{
        updateText()
        {
            this.name="Raj"
        },
        display()
        {
            this.currentUrl=!this.currentUrl
        }
    }
};
</script>
