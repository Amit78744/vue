<template>
    <div>
        <h1 v-if="show">Hello My Name Is Amit</h1>
        <h1 v-else>Hello My Name Is Amit not</h1>
        <!-- <h2>{{data}}</h2>
        <h2>{{msg}}</h2> -->
        <!-- <button v-on:click="hello('Hello Console called')">Call Hello Function</button><br><br>
        <button v-on:mouseover="hello('Hello Console called')">Call Hello Function</button> -->
        <!-- <button v-on:click="display">Call Hello Function</button>  -->
        <table>
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Email</td>
            </tr>
            <tr v-for="user in users" :key="user.id">
                <td>{{user.id}}</td>
                <td>{{user.name}}</td>
                <td>{{user.email}}</td>
            </tr>
        </table>
    </div>
</template>

<script>
export default {
    name:'Home',
    props:{
        data:String,
        msg:String
    },methods:{
        hello(data)
        {
            alert(data)
        },
        display()
        {
            this.show=!this.show
        }
    },data()
    {
        return {
            users:[
                {id:1,name:'Amit',email:'asdsdas@gmail.com'},
                {id:2,name:'Raj',email:'asdsdas@gmail.com'},
                {id:3,name:'Ravi',email:'asdsdas@gmail.com'},
                {id:4,name:'Nitin',email:'asdsdas@gmail.com'},
            ]
        }
    }
    
};
</script>
