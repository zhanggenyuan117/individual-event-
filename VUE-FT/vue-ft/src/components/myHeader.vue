<template>
  <div id="header_one">
    <header>
        <div id="header_parent">
        <div id="header">
            <div v-if="affirm" class="affirm">
                <a>欢迎来到风尚家居</a>
                <router-link to="/login">请登录</router-link>
                <router-link to="/reg">免费注册</router-link>
            </div>
            <div v-else class="affirm">
                <a>欢迎来到风尚家居</a>
                <router-link to="">{{uuu}}</router-link>
                <router-link to="">注销</router-link>
            </div>
        </div>
        <ul>
            <li id="li_1"><router-link to="">我的风尚</router-link>
                <ul>
                    <li><router-link to="">已买到的宝贝</router-link></li>
                    <li><router-link to="">已卖出的宝贝</router-link></li>
                </ul>
            </li>
            <li><i class="iconfont icon-gouwuche1"></i><a href="#">购物车</a></li>
            <li id="li_2"><router-link to="">收藏夹</router-link>
                <ul>
                    <li><router-link to="">收藏的宝贝</router-link></li>
                    <li><router-link to="">收藏的店铺</router-link></li>
                </ul>
            </li>
            <li id="li_3"><i class="iconfont icon-shouji"></i><router-link to="">手机版</router-link>
                <ul>
                    <li><a href="#">
                            <img src="/images/icon/zhang.png" alt="">
                        </a></li>
                </ul>
            </li>
            <li id="li_4"><a href="#">商家支持</a>
                <ul>
                    <li><router-link to="">商家规则</router-link></li>
                    <li><router-link to="">商家入住</router-link></li>
                    <li><router-link to="">商家工具</router-link></li>
                    <li><router-link to="">商家品控</router-link></li>
                </ul>
            </li>
            <li id="li_5"><i class="iconfont icon-wangzhandaohang"></i><a href="#">网站导航</a>
                <ul>
                    <li><router-link to="">住宅家具</router-link></li>
                    <li><router-link to="">家装主材</router-link></li>
                    <li><router-link to="">灯具灯饰</router-link></li>
                    <li><router-link to="">电子电工</router-link></li>
                    <li><router-link to="">全屋定制</router-link></li>
                </ul>
            </li>
        </ul>
    </div>
    </header>
    <div id="search">
        <h1><img src="/images/logo.jpg" alt=""></h1>
        <input type="text" placeholder="搜索 商品/品牌" v-focus>
        <button>搜索</button>
    </div>
    <div id="nav">
        <div></div>
        <div>
            <router-link to="">超市</router-link>
            <router-link to="">国际</router-link>
            <router-link to="">会员</router-link>
            <router-link to="">电器</router-link>
            <router-link to="">医药馆</router-link>
            <router-link to="">营业厅</router-link>
            <router-link to="">魅力惠</router-link>
            <router-link to="">旅行</router-link>
            <router-link to="">苏宁易购</router-link>
        </div>
    </div>

</div>
</template>
<script>
import { cpus } from 'os';
export default {
    data(){
        return {
            affirm:true,
            uuu:"tom"
        }
    },
    methods:{
        login(){
            var u=this.uname;
            var obj={uname:u};
            this.axios.get("/login1",{params:obj}).then(res=>{
                if(res.data.code==1){
                    this.affirm=false;
                    var un=res.request.responseURL;
                    var arr=un.split("=")[1];
                    this.uuu="arr";
                }
            }).catch(err=>{
                console.log(err)
            })
        }
    },
    created(){
        this.login();
    }
}
</script>

<style scoped>
header{
    width: 100%;
    height: 32px;
    background: #f2f2f2;
}
#header_parent {
    width: 1190px;
    height: 32px;
    background: #f2f2f2;
    margin: auto;
    display: flex;
    justify-content: space-between;
}

#header_parent p,
#header_parent,
a {
    color: #000000;
    font-size: 12px;
}

#header {
    width: 218px;
    height: 32px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

#header_parent ul i {
    color: #f00;
}

#header_parent ul {
    width: 510px;
    height: 32px;
    display: flex;
    align-items: center;
    justify-content: space-around;
}

#header_parent a:hover,
#nav div:last-child a:hover {
    color: #f00;
}

#search {
    width: 1190px;
    height: 130px;
    margin: auto;
}

#search h1 img,
#search input,
#search button {
    float: left;
}

#search h1 img {
    height: 130px;
}

#search input {
    width: 491px;
    height: 36px;
    border: 1px solid #ff0036;
    box-sizing: border-box;
    margin-left: 175px;
    margin-top: 47px;
    padding-left: 10px;
}

#search button {
    width: 132px;
    height: 36px;
    background: #ff0000;
    border: 1px solid #ff0036;
    margin-top: 47px;
    color: #ffffff;
    font-size: 18px;
}

#nav {
    width: 1230px;
    height: 36px;
    margin: auto;
}

#nav div:first-child {
    width: 200px;
    height: 36px;
    float: left;
}

#nav div:last-child {
    width: 1030px;
    line-height: 36px;
    float: left;
}

#nav div:last-child a {
    font-size: 14px;
    color: #333333;
    margin-left: 35px;
}

#nav div:last-child a:first-child {
    padding-left: 40px;
}

#li_1,
#li_2,
#li_3,
#li_5,
#li_4 {
    position: relative;
}

#li_1>ul,
#li_2>ul,
#li_4>ul,
#li_5>ul,
#li_3>ul {
    width: 80px;
    height: 60px;
    opacity: 0;
    display: flex;
    flex-direction: column;
    position: absolute;
    top: 30px;
    left: 0;
}

#li_3>ul {
    width: 100px;
    height: 100px;
}

#li_5>ul {
    height: 100px;
}
#li_3>ul>li>a>img {
    width: 100px;
    height: 100px;
}

#li_1:hover>ul,
#li_2:hover>ul,
#li_4:hover>ul,
#li_3:hover>ul,
#li_5:hover>ul {
    opacity: 1;
    background: #fff;
}
#header_one .affirm a{
    margin-left: 10px;
}
</style>
