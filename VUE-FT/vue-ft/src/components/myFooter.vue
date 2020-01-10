<template>
    <footer id="footer_one">
            <div id="four">
                    <ul>
                        <li class="four_li">
                            <router-link to="">
                                <div>
                                    <p>优</p>
                                </div>
                                <p>品质保障</p>
                                <p>品质护航 购物无忧</p>
                            </router-link>
                        </li>
                        <li class="four_li">
                            <router-link to="">
                                <div>
                                    <p>七</p>
                                </div>
                                <p>七天无理由退换货</p>
                                <p>为您提供售后无忧保障</p>
                            </router-link>
                        </li>
                        <li class="four_li">
                            <router-link to="">
                                <div>
                                    <p>特</p>
                                </div>
                                <p>特色服务体验</p>
                                <p>为您呈现不一样的服务</p>
                            </router-link>
                        </li>
                        <li class="four_li">
                            <router-link to="">
                                <div>
                                    <p>帮</p>
                                </div>
                                <p>帮助中心</p>
                                <p>您的购物指南</p>
                            </router-link>
                        </li>
                    </ul>
                </div>
                <div id="fu">
                    <ul class="fu_u">
                        <li><router-link to="">购物指南</router-link></li>
                        <li><router-link to="">免费注册</router-link></li>
                        <li><router-link to="">开通支付宝</router-link></li>
                        <li><router-link to="">支付宝充值</router-link></li>
                    </ul>
                    <ul class="fu_u">
                        <li><router-link to="">购物保障</router-link></li>
                        <li><router-link to="">发票保障</router-link></li>
                        <li><router-link to="">售后规则</router-link></li>
                        <li><router-link to="">缺货赔付</router-link></li>
                    </ul>
                    <ul class="fu_u">
                        <li><router-link to="">支付方式</router-link></li>
                        <li><router-link to="">快捷支付</router-link></li>
                        <li><router-link to="">信用卡</router-link></li>
                        <li><router-link to="">余额宝</router-link></li>
                        <li><router-link to="">货到付款</router-link></li>
                    </ul>
                    <ul class="fu_u">
                        <li><router-link to="">商家服务</router-link></li>
                        <li><router-link to="">商家入驻</router-link></li>
                        <li><router-link to="">商家中心</router-link></li>
                        <li><router-link to="">物流服务</router-link></li>
                        <li><router-link to="">运营服务</router-link></li>
                    </ul>
                    <ul class="fu_u">
                        <li><router-link to="">手机购物</router-link></li>
                        <li><a href="javascript:;">
                            <img src="/images/icon/zhang.png" alt="">
                        </a></li>
                    </ul>
                </div>
    
        <div id="con">
            <router-link to="">关于</router-link>
            <router-link to="">帮助中心</router-link>
            <router-link to="">开放平台</router-link>
            <router-link to="">诚聘英才</router-link>
            <router-link to="">联系我们</router-link>
            <router-link to="">网站合作</router-link>
            <router-link to="">法律声明</router-link>
            <router-link to="">隐私权政策</router-link>
            <router-link to="">知识产权</router-link>
            <router-link to="">廉政举报</router-link>
        </div>
        <p>© 2003-2019 我的青春我做主 版权所有</p>
    </footer>
</template>
<script>
export default {
    
}
</script>>
<style scoped>
#footer_one{
    width:1190px;
    height: 500px;
    margin: auto;
}
#footer_one #con{
    margin-top:50px;
    margin-bottom: 30px;
}
#footer_one #con a{
    margin: 0 10px;
    color: #6c6c6c;
    font-size: 14px;
}
#footer_one #con a:hover{
    text-decoration: underline;
}
#footer_one>p{
    color: #6c6c6c;
    font-size: 12px;
}


#footer_one #four {
    width: 1190px;
    height: 170px;
    margin: 0 auto;
    padding-top: 85px;
    border-top: 1px solid #ccc;
}

#footer_one #four>ul {
    display: flex;
    border-bottom: 1px solid #ccc;
}

#footer_one .four_li {
    width: 307.5px;
    height: 170px;
    text-align: center;
}

#footer_one .four_li>a>div>p {
    font-size: 36px;
    color: #f00;
    font-weight: 700;
}

#footer_one .four_li>a:hover {
    text-decoration: none;
}

#footer_one .four_li>a>div {
    width: 80px;
    height: 80px;
    border: 1px solid #f00;
    border-radius: 50%;
    text-align: center;
    line-height: 80px;
    margin: auto;
}

#footer_one .four_li>a>p:nth-of-type(1) {
    font: 16px;
    font-weight: 700;
    color: #000000;
    margin: 10px auto;
}

#footer_one .four_li>a>p:nth-of-type(2) {
    font-size: 14px;
    color: #ccc;
}
#footer_one #fu{
    display: flex;
    width: 1190px;
    padding: 120px 0 10px;
    justify-content: space-around;
}
#footer_one #fu .fu_u{
    text-align: center;
}
#footer_one #fu .fu_u>li:nth-child(1)>a{
    font-size:16px;
    font-weight: 700;
    color: #000000;
}
#footer_one #fu .fu_u>li:nth-child(2)>a,#footer_one #fu .fu_u>li:nth-child(3)>a,#footer_one #fu .fu_u>li:nth-child(4)>a,#footer_one #fu .fu_u>li:nth-child(5)>a{
    font-size: 12px;
    color: #cccccc;
}
#footer_one #fu .fu_u>li>a>img{
    width: 95px;
    height: 95px;
    margin-top: 15px;
}
#footer_one>p{
    padding-bottom: 35px;
}
</style>