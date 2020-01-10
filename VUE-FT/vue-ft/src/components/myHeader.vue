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
                <router-link to="">{{uname}}</router-link>
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
            uname:"tom"
        }
    },
    methods:{
        login(){
            this.axios.get("/login1").then(res=>{
                if(res.data.code==1){
                    this.affirm=false;
                }
            }).catch(err=>{
                console.log(err)
            })
        }
    },
    created(){
        this.login();
    }


    
//     props: ["lid"],
//   data() {
//     return {
//       product: { price: 0 },
//       specs: [],
//       //因为页面上需要加载一组图片，所以data中需要有一个保存所有图片的数组
//       pics: [{ md: "", lg: "" }],
//       //因为小图片列表左右移动核心是点击的次数，所以data中需要用times变量记录点击了几次
//       times: 0,
//       //因为中图片和大图片具体使用哪一张图片和选中的第几张的下标有直接关系
//       //比如: 鼠标进入ul下第2张小图片[1]
//       // 则中图片采用pics中[1]位置的图片的md版本
//       // 大图片采用pics中[1]位置的图片的lg版本
//       //比如: 鼠标进入ul下第2张小图片[2]
//       // 则中图片采用pics中[2]位置的图片的md版本
//       // 大图片采用pics中[2]位置的图片的lg版本
//       //所以只需要一个变量i，就可控制中图片和大图片
//       i: 0,
//       //因为需要同时动态控制小遮罩层和大图片的显示隐藏，所以需要一个变量
//       hide: true,
//       //因为要修改mask的位置，所以为mask绑定style对象
//       maskStyle: {
//         left: "0",
//         top: "0"
//       }
//     };
//   },
//   methods: {
//     move(e) {
//       var left = e.offsetX - 88;
//       var top = e.offsetY - 88;
//       if (left < 0) left = 0;
//       else if (left > 216) left = 216;
//       if (top < 0) top = 0;
//       else if (top > 216) top = 216;
//       this.maskStyle = {
//         left: left + "px",
//         top: top + "px"
//       };
//     },
//     toggle() {
//       this.hide = !this.hide;
//     },
//     changei(e) {
//       e.target代替this
//       只允许img元素触发事件
//       if (e.target.nodeName == "IMG") {
//         this.i = e.target.dataset.i;
//       }
//     },
//     moveLeft() {
//       if (this.times < this.pics.length - 4) {
//         this.times++;
//       }
//     },
//     moveRight() {
//       if (this.times != 0) {
//         this.times--;
//       }
//     },
//     myload() {
//       this.axios
//         .get("/details", {
//           params: { lid: this.lid }
//         })
//         .then(result => {
//           console.log(result.data);
//           var { product, specs, pics } = result.data;
//           this.product = product;
//           this.specs = specs;
//           this.pics = pics; //当前商品的图片列表！
//         });
//     }
//   },
//   created() {
//     this.myload();
//   },
//   watch: {
//     lid() {
//       this.myload();
//     }
//   }
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
    border: 1px solid #ff0000;
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