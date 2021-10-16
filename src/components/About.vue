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
        
        <h1 v-if="currentUrl1 == 'http://abc.anviya.in/#/about'"> ABC About Page </h1>
        <h1 v-else-if="currentUrl1 == 'http://xyz.anviya.in/#/about'">XYZ About Page </h1>
        <h1 v-else>default About Page</h1>
        
    </div>
</template>

<script>
export default {
    name:'About',
    currentUrl1 : window.currentUrl1,
    data()
    {
        return {
            name:'Amit',
            currentUrl1 : window.location,
            ok:true,
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
