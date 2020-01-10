<template>
    <div class="reg">
        <section>
        <table></table>
        <div>
            <table></table>
            <p><span>注册用户</span><router-link to="/login">直接登陆</router-link></p>
            <p><label for="">用户名:</label><input type="text" id="uname" onblur="fn()"></p>
            <p><label for="">密码:</label><input type="password" id="upwd"></p>
            <p><label for="">确认密码:</label><input type="password" id="uupwd" onblur="yan()"></p>
            <p><label for="">邮箱:</label><input type="email" id="email"></p>
            <p><label for="">手机:</label><input type="phone" id="phone"></p>
            <p><label for="">验证码:</label><input type="text" id="code_1" onblur="ffn()"><span id="code_ht_1" style="font-size: 36px; padding-bottom: 16px;">T3in</span><i onclick="code()"><img src="/images/icon/shua.png" alt=""></i></p>
            <h3 id="h3"></h3>
            <button onclick="fn1()" id="bbt">注册</button>
        </div>
    </section>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>

     
        .reg section{
            width:100%;
            height:600px;
            background: url("/images/login.jpg");
        }
        .reg section>div{
            width:500px;
            height: 500px;
            background:#ffffff;
            margin:50px auto;
            animation: bounceInDown 1s;
        }
        .reg section>div>p{
            width:400px;
            height:30px;
            margin: 15px auto 0;
            display: flex;
            justify-content: space-between;
        }
        .reg section>div input{
            width:250px;
            height: 30px;
            border: 1px solid #ccc;
        }
        .reg section>div>p:nth-of-type(1)>span{
            font-size: 22px;
            font-weight: 800;
        }
        .reg section>div>p:nth-of-type(1)>a{
            font-size: 14px;
            color: #000000;
        }
       
        .reg section>div>p:last-of-type>input{
            width: 70px;
            height: 30px;
            margin-left: 68px;
        }
        .reg section>div>p:last-of-type>span:first-of-type{
            width: 100px;
            height: 30px;
            margin-left: -9px;
            background:url("/images/bei.jpg")
        }
        .reg section>div>p:last-of-type>i{
            width: 30px;
            height: 30px;
            cursor: pointer;
        }
        .reg section>div>p:last-of-type>i>img{
            width: 20px;
            height: 20px;
            margin: 5px auto 0;
            
        }
        .reg section>div>button{
            width:215px;
            height: 30px;
            border-radius: 5px;
            margin: 10px 0 0 199px;
            font-size: 16px;
        }
        .reg #h3{
            width: 215px;
            height: 30px;
            margin: 0;
            margin: 33px 0 10px 199px;
        }
    
</style>