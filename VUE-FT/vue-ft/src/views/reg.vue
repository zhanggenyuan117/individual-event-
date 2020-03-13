<template>
  <div class="reg">
    <section>
      <table></table>
      <div>
        <table></table>
        <p>
          <span>注册用户</span>
          <router-link to="/login">直接登陆</router-link>
        </p>
        <p>
          <label for>用户名:</label>
          <input type="text" id="uname" v-model="uname" @blur="unameBlur" />
        </p>
        <p>
          <label for>密码:</label>
          <input type="password" id="upwd" v-model="upwd" />
        </p>
        <p>
          <label for>确认密码:</label>
          <input type="password" id="uupwd" @blur="pwdBlur" v-model="uupwd" />
        </p>
        <p>
          <label for>邮箱:</label>
          <input type="email" id="email" v-model="email" />
        </p>
        <p>
          <label for>手机:</label>
          <input type="phone" id="phone" v-model="phone" />
        </p>
        <p>
          <label for>验证码:</label>
          <input type="text" id="code_1" v-model="inputValue" @blur="inputBlur" @keydown.13="reg"/>
          <span id="code_ht_1" style="font-size: 28px; padding-bottom: 16px;">{{yanzheng}}</span>
          <i @click="refresh">
            <img src="/images/icon/shua.png" alt />
          </i>
        </p>
        <div class="hint">{{hint}}</div>
        <el-button type="button" @click="reg" id="bbt">注册</el-button>
      </div>
    </section>
  </div>
</template>
<script>
export default {
    data(){
        return{
            yanzheng:"",
            hint:"",
            uname:"",
            upwd:"",
            uupwd:"",
            email:"",
            phone:"",
            inputValue:""
        }
    },
    methods:{
        inputBlur(){
            if(this.inputValue!=this.yanzheng){
                this.open2();
                this.code();
            }
        },
         open2() {
            this.$alert('验证码输入错误', '警告', {
            confirmButtonText: '确定',
            });
        },
        open1() {
            this.$alert('两次密码输入不一致', '警告', {
            confirmButtonText: '确定',
            });
        },
      open() {
        this.$alert('注册成功', {
          confirmButtonText: '确定',
          callback: action => {
              this.$router.push("/login");
          }
        });
      },
        unameBlur(){
            this.axios.get("/unameBlur").then(res=>{
                console.log(res);
                if(res.data=="1"){
                    this.hint="该用户名可以使用";
                }else if(res.data=="0"){
                    this.hint="该用户名已被占用";
                }
            })
        },
        reg(){
            var u=this.uname;
            var p=this.upwd;
            var e=this.email;
            var phone=this.phone;
            var obj={uname:u,upwd:p,email:e,phone:phone};
            this.axios.get("/reg",{params:obj})
            .then(res=>{
              let xingming = res.config.params.uname;
                if(res.data=="1"){
                    this.open();
                    sessionStorage.setItem('uname',xingming)
                }
            })
            .catch(err=>{
                if(err) console.log(err);
            })
        },
        pwdBlur(){
            if(this.upwd!==this.uupwd){
            this.open1();
            }
        },
        code(){
        var arr=[];
        for(var i=0;i<123;i++){
            if(i<10) arr.push(i);
            if(i<65) continue;
            if(i<91) arr.push(String.fromCharCode(i));
            if(i<97) continue;
            arr.push(String.fromCharCode(i));    
        }
        arr.sort(()=>{
            return Math.random()-0.5;
        });
        var str=arr.slice(0,4).join("");
        this.yanzheng=str;
         },
         refresh(){
             this.code();
         },
    },
    created(){
        this.code();
    }
}
</script>
<style scoped>
.reg section {
  width: 100%;
  height: 600px;
  background: url("/images/login.jpg");
}
.reg section > div {
  width: 500px;
  height: 500px;
  background: #ffffff;
  margin: 50px auto;
  animation: bounceInDown 1s;
}
.reg section > div > p {
  width: 400px;
  height: 30px;
  margin: 15px auto 0;
  display: flex;
  justify-content: space-between;
}
.reg section > div input {
  width: 250px;
  height: 30px;
  border: 1px solid #ccc;
}
.reg section > div > p:nth-of-type(1) > span {
  font-size: 22px;
  font-weight: 800;
}
.reg section > div > p:nth-of-type(1) > a {
  font-size: 14px;
  color: #000000;
}

.reg section > div > p:last-of-type > input {
  width: 70px;
  height: 30px;
  margin-left: 68px;
}
.reg section > div > p:last-of-type > span:first-of-type {
  width: 100px;
  height: 30px;
  margin-left: -9px;
  background: url("/images/bei.jpg");
}
.reg section > div > p:last-of-type > i {
  width: 30px;
  height: 30px;
  cursor: pointer;
}
.reg section > div > p:last-of-type > i > img {
  width: 20px;
  height: 20px;
  margin: 5px auto 0;
}
.reg section > div > #bbt {
  width: 215px;
  height: 30px;
  line-height: 1px;
  border-radius: 5px;
  margin: 10px 0 0 199px;
  font-size: 16px;
  font-weight: 800;
}
.reg .hint {
  width: 215px;
  height: 30px;
  margin: 0;
  margin: 33px 0 10px 199px;
  font-size: 14px;
  color: green;
  font-weight: 900;
}
</style>