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
        <h1 v-else>{{list.email}} Default Homes Page</h1>
        
        <!-- <h3 v-once>{{name}}</h3>
        <h3>{{a + b}}</h3>

        <h3>{{ok?"yes":"No"}}</h3>
        <button v-on:click="display">Click me</button> -->
    </div>
</template>

<script>
import Vue from 'vue';
import axios from 'axios';
import VueAxios from 'vue-axios';

 Vue.use(VueAxios,axios)
// export default ({
//     name:"EmployeeList",
//     data()
//     {
//         return {list:undefined}
//     },
//     mounted()
//     {
//         Vue.axios.post('http://52.77.235.8/maidanlah-backend/getHomescreenData',{
//             website_name:'xyz'
//         })
//         .then((resp)=>{
//             this.list = resp.data.data;
//             console.warn(resp.data.data);
//         })
//     }
// })

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
            list : undefined,
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
    },mounted()
    {
        Vue.axios.post('http://52.77.235.8/getHomescreenData',{
            //https://dummy.restapiexample.com/api/v1/employees
            website_name:'xyz'
        })
        .then((resp)=>{
            this.list = resp.data.data;
            console.warn(resp.data.data);
        })
    }
};
</script>
