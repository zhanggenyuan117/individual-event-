<template>
    <section class="login">
        <div class="divShow divOne" v-if="bool">
            <h2>账号登录</h2><img src="/images/icon/erweima.png" alt="" @click="change">
            <label for=""><i class="iconfont icon-yonghuming"></i></label><input type="text" placeholder="会员名/邮箱/手机号" v-model="uname" v-focus>
            <label for=""><i class="iconfont icon-mima"></i></label><input type="password" v-model="upwd" @keydown.13="login">
            <button @click="login">登录</button>
            <div>
                <router-link to="">忘记密码</router-link>
                <router-link to="">忘记用户名</router-link>
                <router-link to="/reg">免费注册</router-link>
            </div> 
        </div>
        <div class="divShow divTwo" v-else>
            <h3>手机扫码,安全登录</h3><img src="/images/icon/dian.png" alt="" @click="change">
            <h4><img src="/images/icon/zhang.png" alt=""></h4>
            <router-link to="">密码登录</router-link>
            <router-link to="/reg">免费注册</router-link>
        </div>
    </section>
</template>
<script>
export default {
    data(){
        return {
            bool:true,
            uname:"",
            upwd:""
        }
    },
    methods:{
        change(){
            this.bool=!this.bool;
        },
        login(){
            var reg=/^[0-9a-z]{3,12}$/i;
            var $uname=this.uname;
            var $upwd=this.upwd;
            if(reg.test($uname)){
                if(reg.test($upwd)){
                    var url="/login";
                    var obj={uname:$uname,upwd:$upwd};
                    this.axios.get(url,{params:obj}).then(result=>{
                        if(result.data.code==1){
                            this.$router.push('/');
                            console.log(result)
                            sessionStorage.setItem('uname',this.uname)
                            console.log(sessionStorage.getItem('uname'))
                            // location.reload();
                        }else{
                            alert("用户名或密码错误")
                        }
                    })
                }else{
                    alert("密码格式错误")
                }
            }else{
                alert("用户名格式错误")
            }
        }
    }
}
</script>
<style scoped>
         .login {
            width: 100%;
            height: 600px;
            background: url("/images/login.jpg");
            position: relative;
        }
        .login .divShow{
            width: 390px;
            height: 380px;
            background: #ffffff;
            margin: 70px auto;
            position: absolute;
            left: 653px;top: 0px;
            animation: zoomIn 1s;
        }
        .login .divOne img{
            width: 80px;
            height: 80px;
            position: absolute;
            top: 1px;left: 309px;      
        }
        .login .divOne h2{
            font-size: 22px;
            font-weight: 800;
            margin: 30px 0 0 30px;
        }
        .login .divOne input{
            width: 300px;
            height: 42px;
            margin: 30px 0 0 30px;
            padding-left:50px;  
        }
        .login .divOne label{
            width: 45px;
            height: 41px;
            float: left;
            margin-top: 30px;
            background: #c1c1c1;
            position: absolute;
            left: 30px;
            top:129px;
        } 
        .login .divOne label:nth-of-type(1){
            top:57px;
        }
        .login .divOne label .iconfont{
            font-size: 24px;
            float: left;
            margin: 3px 0 0 12px;
        }
        .login .divOne button{
            width: 300px;
            height: 42px;
            line-height: 42px;
            background-color: #ff0036;
            font-size: 16px;
            font-weight: 700;
            color: #fff;
            border-radius: 10px;
            cursor: pointer;
            margin: 30px 0 0 65px;
        }
        .login .divOne>div{
            margin-top: 20px;
        }
        .login .divOne>div>a{
            color: #6c6c6c;
            font-size: 12px;
        }
        .login .divShow a:hover{
            color: #ff0036
        }
        .login .divOne>div a:first-child{
            margin-left: 145px;
        }
        .login .divOne>div a:nth-child(2){
            margin: 0 5px;
        }
        .login .divTwo>h3{
            font-size: 22px;
            font-weight: 800;
            margin: 30px 0 0 30px;
        }
        .login .divTwo>h4>img{
            width: 150px;
            height: 150px;
            margin:50px auto;
        }
        .login .divTwo>img{
            width: 80px;
            height: 80px;
            position: absolute;
            left: 309px;top: 1px;
        }
        .login .divTwo a{
            color: #6c6c6c;
            font-size: 12px;
            float: right;
            margin-right: 15px;
        } 
</style>