<template>
  <div id="detailsAll">
    <div id="details">
      <hr />
      <div>
        <div class="magnifyingGlass">
          <div class="small_img">
            <div>
              <img v-for="(item,index) of small_img" :key="index" :src="small_img[small_img_i]" />
            </div>
            <div class="mask" v-show="bool" :style="maskStyle"></div>
            <div
              @mouseenter="mouseenterHandler"
              @mouseleave="mouseLeaveHandler"
              @mousemove="mousemoveHandler"
              style="width:418px;height:418px;position:absolute;left:0px;top:0px;"
            ></div>
          </div>
          <div
            class="big_img"
            v-show="bool"
            :style="{'background-image':`url(${small_img[small_img_i]})`,'background-position':`-${parseInt(maskStyle.left)*1.32}px -${parseInt(maskStyle.top)*1.32}px`}"
          ></div>
          <div class="carousel">
            <div>
              <!-- <img src="../assets/details/small_img/left.png" alt /> -->
              <div>
                <img
                  v-for="(p,index) of small_img"
                  :key="index"
                  :src="p"
                  style="width:60px;height:60px;float:left;margin:0 3px;margin-top:10px;"
                  @click="imgClickHandler(index)"
                />
              </div>
              <!-- <img src="../assets/details/small_img/right.png" alt /> -->
            </div>
          </div>
          <div class="popularity">
            <div>
              <a href="javascript:;">
                <span></span>
                <span>收藏商品</span>
              </a>
              <span>(167194人气)</span>
            </div>
            <div>
              <a href="javascript:;">举报</a>
            </div>
          </div>
        </div>
        <div class="magnifyingGlass_right">
          <!-- 1 -->
          <div>
            <p>2019年新款科技布现代简约大小户型布艺沙发组合北欧客厅布沙发</p>
            <p>【天猫美家抽检】乳胶弹簧坐包+松木框架</p>
            <p>商家承诺：购买“送货入户并安装”服务，未履行最高可获30000积分赔付?</p>
          </div>
          <!-- 2 -->
          <div>
            <div>
              <span>价格</span>
              <span>¥</span>
              <span>2760.00-15160.00</span>
            </div>
          </div>
          <!-- 3 -->
          <div>
            <div>运费</div>
            <div>杭州v上城区v</div>
          </div>
          <!-- 4 -->
          <div>
            <li>
              <a href="javascript:;">
                <span>累计评价</span>
                <span>7523</span>
              </a>
            </li>
            <li>
              <a href="javascript:;">
                <span>送商城积分</span>
                <span>1300</span>
                <span>起</span>
              </a>
            </li>
          </div>
          <!-- 5 -->
          <div>
            <!-- 1 -->
            <div>
              <div>几人坐</div>
              <div>
                <a href="javascript:;">
                  <span>【海绵款】(普通面料)选1-15号色</span>
                </a>
                <a href="javascript:;">
                  <span>【弹簧款】(普通面料)选1-15号色</span>
                </a>
                <a href="javascript:;">
                  <span>【乳胶款】(免洗面料)选1-15号色</span>
                </a>
                <a href="javascript:;">
                  <span>【加强型乳胶款】(免洗面料+加强型松木框架)选1-15号色</span>
                </a>
                <a href="javascript:;">
                  <span>【纳米乳胶款】(纳米科技布)选21-28号色</span>
                </a>
                <a href="javascript:;">
                  <span>【加强型纳米乳胶款】(纳米科技布+加强型松木)选21-28号</span>
                </a>
              </div>
            </div>
            <!-- 2 -->
            <div>
              <table></table>
              <div>颜色分类</div>
              <div>
                <a href="javascript:;" v-for="(p,i) of colorImg" :key="i">
                  <img :src="p" />
                </a>
              </div>
            </div>
            <!-- 3 -->
            <div>
              <div>
                <div>数量</div>
                <div>
                  <el-input-number
                    v-model="num"
                    controls-position="left"
                    @change="handleChange"
                    :min="1"
                    :max="10"
                  ></el-input-number>
                  <span>件</span>
                </div>
              </div>
            </div>
            <!-- 4 -->
            <div>
              <router-link to tag="a">立即购买</router-link>
              <router-link to tag="a">
                <i class="iconfont icon-gouwuche1"></i>加入购物车
              </router-link>
            </div>
          </div>
          <!-- 6 -->
          <div>
            <span>服务承诺</span>
            <ul>
              <li>
                <router-link tag="a" to>送货入户</router-link>
              </li>
              <li>
                <router-link tag="a" to>三年质保</router-link>
              </li>
              <li>
                <router-link tag="a" to>15天价保</router-link>
              </li>
              <li>
                <router-link tag="a" to>正品保证</router-link>
              </li>
              <li>
                <router-link tag="a" to>支付方式</router-link>
              </li>
              <li>
                <router-link tag="a" to>七天无理由退换</router-link>
              </li>
            </ul>
          </div>
          <!-- 7 -->
          <div>检测到您当前处于非安全网络环境，部分商品信息可能不准确，请在交易支付页面再次确认商品价格信息。</div>
        </div>
        <div class="side_img">
          <div>
            <div>
              <span>---- 看了又看 ----</span>
            </div>
            <div>
              <div>
                <ul :style="{'margin-top':-i*480+'px'}">
                  <li v-for="(p,i) of side_img_arr" :key="i">
                    <router-link to>
                      <img :src="p.url" style="width:140px;height:140px;" />
                      <div>
                        <span>{{`¥${p.price.toFixed(2)}`}}</span>
                      </div>
                    </router-link>
                  </li>
                </ul>
              </div>
              <ul>
                <li @click="prev">
                  <i class="el-icon-arrow-up"></i>
                </li>
                <li @click="next">
                  <i class="el-icon-arrow-down"></i>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="setMeal">
      <el-tabs v-model="activeName" @tab-click="handleClick">
        <el-tab-pane label="用户管理" name="first">用户管理</el-tab-pane>
        <el-tab-pane label="配置管理" name="second">配置管理</el-tab-pane>
        <el-tab-pane label="角色管理" name="third">角色管理</el-tab-pane>
        <el-tab-pane label="定时任务补偿" name="fourth">定时任务补偿</el-tab-pane>
      </el-tabs>
    </div>
    <div id="details_end"></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      small_img_i: 0,
      side_img_arr: [
        { url: require("../assets/details/small_img/1.jpg"), price: 3500 },
        { url: require("../assets/details/small_img/1.jpg"), price: 1200 },
        { url: require("../assets/details/small_img/2.jpg"), price: 3800 },
        { url: require("../assets/details/small_img/1.jpg"), price: 3599 },
        { url: require("../assets/details/small_img/1.jpg"), price: 3189 },
        { url: require("../assets/details/small_img/3.jpg"), price: 3023 },
        { url: require("../assets/details/small_img/1.jpg"), price: 3543 },
        { url: require("../assets/details/small_img/1.jpg"), price: 3456 },
        { url: require("../assets/details/small_img/2.jpg"), price: 5555 },
        { url: require("../assets/details/small_img/1.jpg"), price: 6099 },
        { url: require("../assets/details/small_img/2.jpg"), price: 4799 },
        { url: require("../assets/details/small_img/1.jpg"), price: 2389 }
      ],
      i: 0,
      num: 1,
      colorImg: [
        require("../assets/details/color/1.jpg"),
        require("../assets/details/color/2.jpg"),
        require("../assets/details/color/3.jpg"),
        require("../assets/details/color/4.jpg"),
        require("../assets/details/color/5.jpg"),
        require("../assets/details/color/6.jpg"),
        require("../assets/details/color/7.jpg"),
        require("../assets/details/color/8.jpg"),
        require("../assets/details/color/9.jpg"),
        require("../assets/details/color/10.jpg"),
        require("../assets/details/color/11.jpg"),
        require("../assets/details/color/12.jpg"),
        require("../assets/details/color/13.jpg"),
        require("../assets/details/color/14.jpg"),
        require("../assets/details/color/15.jpg"),
        require("../assets/details/color/16.jpg"),
        require("../assets/details/color/17.jpg"),
        require("../assets/details/color/18.jpg"),
        require("../assets/details/color/19.jpg")
      ],
      small_img: [
        require("../assets/details/small_img/1.jpg"),
        require("../assets/details/small_img/2.jpg"),
        require("../assets/details/small_img/3.jpg"),
        require("../assets/details/small_img/4.jpg"),
        require("../assets/details/small_img/5.jpg")
      ],
      bool: false,
      maskStyle: {
        left: "0",
        top: "0"
      }
    };
  },
  methods: {
    imgClickHandler(index) {
      this.small_img_i = index;
    },
    // changei(e){
    //   console.log(e.target)
    //   if(e.target.nodeName=="IMG"){

    //     this.small_img_i=e.target.dataset.index;
    //   }
    // },
    prev() {
      if (this.i > 0) {
        this.i--;
      } else if (this.i < 1) {
        this.i = 3;
      }
    },
    next() {
      if (this.i < 3) {
        this.i++;
      } else if (this.i > 2) {
        this.i = 0;
      }
    },
    handleChange(value) {
      console.log(value);
    },
    mouseenterHandler(e) {
      this.bool = true;
    },
    mouseLeaveHandler(e) {
      this.bool = false;
    },
    mousemoveHandler(e) {
      var left = e.offsetX - 60;
      var top = e.offsetY - 75;
      if (left < 0) left = 0;
      else if (left > 298) left = 298;
      if (top < 0) top = 0;
      else if (top > 268) top = 268;
      this.maskStyle = {
        left: left + "px",
        top: top + "px"
      };
    }
  }
};
</script>
<style scoped>
#detailsAll{
  width: 1190px;
  margin: auto;
}
#details p {
  margin: 0;
  padding: 0;
}
#details a {
  text-decoration: none;
}
#details > div {
  width: 990px;
  height: 820px;
}
#details {
  width: 1190px;
  margin: auto;
  position: relative;
}
#details .magnifyingGlass {
  width: 1190px;
  height: 603px;
  position: relative;
}
#details .magnifyingGlass > .small_img {
  width: 418px;
  height: 418px;
  margin: 46px 21px 21px 21px;
  position: relative;
}
#details .magnifyingGlass > .small_img > div:first-child img {
  width: 418px;
  height: 418px;
  position: absolute;
}
#details .magnifyingGlass > .small_img .mask {
  width: 120px;
  height: 150px;
  background-color: rgba(255, 192, 0, 0.5);
  position: absolute;
}
#details .magnifyingGlass > .big_img {
  width: 418px;
  height: 418px;
  position: absolute;
  top: 0px;
  left: 460px;
  /* background-size: 800px 800px; */
  z-index: 1000;
}
/*  小的轮播图 carousel */
#details .magnifyingGlass .carousel {
  width: 418px;
  height: 80px;
  margin-left: 21px;
  position: relative;
}
#details .magnifyingGlass .carousel > div > div {
  width: 350px;
  margin-left: 30px;
  overflow: hidden;
  display: flex;
  justify-content: space-between;
  margin-top: 10px;
}
#details .magnifyingGlass .carousel > div > div > img:hover {
  border: 1px solid #ff0036;
}
#details .magnifyingGlass .popularity {
  width: 460px;
  height: 81.67px;
  padding: 38px 40px 25px;
  display: flex;
  justify-content: space-between;
}
#details .magnifyingGlass .popularity div {
  font-size: 12px;
  color: #999999;
}
#details .magnifyingGlass .popularity div a {
  color: #999999;
}
#details .magnifyingGlass .popularity div a span:first-child {
  display: inline-block;
  width: 12px;
  height: 12px;
  background-image: url("../assets/details/small_img/shoucang.png");
  margin-right: 8px;
}

/* 小轮播图  左右 按钮 */
/* #details .magnifyingGlass .carousel > div > img {
  width: 30px;
  height: 50px;
  position: absolute;
  top: 15px;
  border-radius: 5px;
} 
#details .magnifyingGlass .carousel > div > img:nth-of-type(1) {
  left: 5px;
}
#details .magnifyingGlass .carousel > div > img:nth-of-type(2) {
  right: 5px;
}
#details .magnifyingGlass .carousel > div > img:hover {
  background-color: rgba(0, 0, 0, 0.3);
}
*/
/* 右边详情页 */
#details .magnifyingGlass_right {
  width: 530px;
  height: 812px;
  position: absolute;
  left: 470px;
  top: 20px;
}
#details .magnifyingGlass_right > div:first-child {
  width: 530px;
  height: 90.5px;
  padding: 20px 10px 15px;
}
#details .magnifyingGlass_right > div:first-child > p:first-child {
  color: #000;
  font-size: 16px;
  font-weight: 700;
}
#details .magnifyingGlass_right > div:first-child > p:nth-child(2),
#details .magnifyingGlass_right > div:first-child > p:nth-child(3) {
  font-size: 14px;
}
#details .magnifyingGlass_right > div:first-child > p:nth-child(2) {
  color: #ff0036;
}
#details .magnifyingGlass_right > div:first-child > p:nth-child(3) {
  color: #204ad7;
}
#details .magnifyingGlass_right > div:nth-child(2) {
  width: 510px;
  height: 40.55px;
  margin: auto;
  padding: 5px 0;
  background-color: #e9e9e9;
}
#details .magnifyingGlass_right > div:nth-child(2) > div > span:nth-of-type(1) {
  font-size: 12px;
  color: #999999;
  line-height: 30.55px;
  margin-left: 20px;
  margin-top: 20px;
}
#details .magnifyingGlass_right > div:nth-child(2) > div > span:nth-of-type(2) {
  font-size: 18px;
  color: #ff0036;
  line-height: 30.55px;
  margin-left: 70px;
}
#details .magnifyingGlass_right > div:nth-child(2) > div > span:nth-of-type(3) {
  font-size: 24px;
  color: #ff0036;
  line-height: 30.55px;
}
#details .magnifyingGlass_right > div:nth-child(3) {
  width: 510px;
  height: 36.67px;
  margin: auto;
}
#details .magnifyingGlass_right > div:nth-child(3) > div:first-child,
#details .magnifyingGlass_right > div:nth-child(3) > div:nth-child(2) {
  font-size: 12px;
  color: #999999;
  float: left;
  line-height: 36.67px;
  margin-left: 10px;
}
#details .magnifyingGlass_right > div:nth-child(3) > div:nth-child(2) {
  color: #333333;
  margin-left: 50px;
}
#details .magnifyingGlass_right > div:nth-child(4) {
  width: 510px;
  padding: 10.5px 0;
  border: 1px dotted #c9c9c9;
  border-width: 1px 0;
  margin: auto;
  display: flex;
  justify-content: space-around;
}
#details .magnifyingGlass_right > div:nth-child(4) li {
  margin-top: -7px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(4)
  > li:first-child
  > a
  > span:nth-child(2) {
  color: #ff0036;
  margin-left: 3px;
  font-weight: 700;
}
#details
  .magnifyingGlass_right
  > div:nth-child(4)
  > li:nth-child(2)
  > a
  > span:nth-child(2) {
  color: #228800;
  margin-left: 3px;
  font-weight: 700;
}
#details .magnifyingGlass_right > div:nth-child(4) span {
  color: #999999;
  font-size: 12px;
}
#details .magnifyingGlass_right > div:nth-child(5) {
  width: 500px;
  height: 462px;
  margin: 0px auto 24px;
}
#details .magnifyingGlass_right > div:nth-child(5) > div:first-child {
  width: 500px;
  height: 180px;
  margin-top: 10px;
  padding-bottom: 6px;
  display: flex;
  justify-content: space-between;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:first-child
  > div:first-child,
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:first-child
  > div:nth-child(2)
  span {
  font-size: 12px;
  color: #838383;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:first-child
  > div:nth-child(2) {
  width: 420px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:first-child
  > div:nth-child(2)
  a {
  float: left;
  background-color: #fff;
  white-space: nowrap;
  width: auto !important;
  min-width: 10px;
  padding: 0 9px;
  text-align: center;
  margin: 5px;
  color: #000;
  border: 1px solid #000;
  line-height: 22px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:first-child
  > div:nth-child(2)
  a:hover {
  border: 1px solid #ff0036;
}
#details .magnifyingGlass_right > div:nth-child(5) > div:nth-child(2) {
  width: 500px;
  height: 144px;
  padding-bottom: 6px;
  display: flex;
  justify-content: space-between;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(2)
  > div:nth-of-type(1) {
  font-size: 12px;
  color: #838383;
  margin-top: 8px;
  margin-left: -25px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(2)
  > div:nth-of-type(2) {
  width: 420px;
  height: 138px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(2)
  > div:nth-of-type(2)
  a {
  display: inline-block;
  width: 38px;
  height: 38px;
  margin: 1px 3px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(2)
  > div:nth-of-type(2)
  a
  img {
  width: 100%;
  height: 100%;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(2)
  > div:nth-of-type(2)
  a:hover {
  border: 1px solid #f00;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(3)
  > div:nth-child(1) {
  width: 500px;
  height: 35px;
  line-height: 31px;
  color: #878787;
  display: flex;
  margin-top: 3px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(3)
  > div:nth-child(1)
  > div:first-child,
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(3)
  > div:nth-child(1)
  > div:nth-child(2)
  span {
  color: #838383;
  font-size: 12px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(3)
  > div:nth-child(1)
  > div:nth-child(2)
  span {
  margin-left: 10px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(3)
  > div:nth-child(1)
  > div:nth-child(2)
  .el-input-number {
  width: 150px;
  height: 35px;
  margin-left: 59px;
}
#details .magnifyingGlass_right > div:nth-child(5) > div:nth-child(4) {
  width: 500px;
  height: 50px;
  padding: 10px 0 0 66px;
  margin: 10px 0 0;
}
#details .magnifyingGlass_right > div:nth-child(5) > div:nth-child(4) a {
  display: inline-block;
  width: 180px;
  height: 40px;
  text-align: center;
  line-height: 40px;
  border: 1px solid #ff0036;
  margin-left: 18px;
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(4)
  a:nth-child(1) {
  background-color: #ffeded;
  color: #ff0036;
  font-family: "Microsoft Yahei";
}
#details
  .magnifyingGlass_right
  > div:nth-child(5)
  > div:nth-child(4)
  a:nth-child(2) {
  background-color: #ff0036;
  color: #fff;
}
#details .magnifyingGlass_right > div:nth-child(6) {
  width: 500px;
  height: 46px;
  margin: auto;
  display: flex;
}
#details .magnifyingGlass_right > div:nth-child(6) ul {
  margin-left: 50px;
  display: flex;
  flex-wrap: wrap;
}
#details .magnifyingGlass_right > div:nth-child(6) span,
#details .magnifyingGlass_right > div:nth-child(6) li a {
  font-size: 12px;
}
#details .magnifyingGlass_right > div:nth-child(6) span {
  display: inline-block;
  width: 100px;
  color: #666666;
}
#details .magnifyingGlass_right > div:nth-child(6) li a {
  color: #999999;
}
#details .magnifyingGlass_right > div:nth-child(6) li {
  margin: 0 25px;
}
#details .magnifyingGlass_right > div:nth-child(7) {
  width: 510px;
  color: #999999;
  font-size: 12px;
  margin-top: 22px;
}
/* 最右边  竖向轮播图 */
#details > div .side_img {
  width: 201px;
  height: 905px;
  position: absolute;
  top: 15px;
  right: -15px;
  border-left: 1px solid #f2f2f2;
}
#details > div .side_img > div {
  width: 200px;
  height: 745px;
  margin: auto;
}
#details > div .side_img > div > div:first-child {
  widows: 200px;
  height: 15px;
  margin: 5px 0;
  text-align: center;
}
#details > div .side_img > div > div:first-child span {
  font-size: 12px;
  color: #999999;
}
#details > div .side_img > div > div:nth-child(2) {
  width: 175px;
  height: 507px;
  padding: 10px 12px 2px 13px;
  margin: 15px auto 0;
}
#details > div .side_img > div > div:nth-child(2) > div {
  width: 175px;
  height: 480px;
  overflow: hidden;
}
#details > div .side_img > div > div:nth-child(2) > div > ul {
  width: 175px;
  height: 1920px;
  transition: all 1s;
}
#details > div .side_img > div > div:nth-child(2) > div > ul > li {
  width: 175px;
  height: 160px;
}
#details > div .side_img > div > div:nth-child(2) > div > ul > li > a > div {
  width: 140px;
  text-align: center;
  line-height: 20px;
  background: rgba(255, 255, 255, 0.8);
  position: relative;
  left: 0;
  bottom: 22px;
}
#details
  > div
  .side_img
  > div
  > div:nth-child(2)
  > div
  > ul
  > li
  > a
  > div
  span {
  font-size: 12px;
  color: #404040;
  font-family: Arial;
}
#details > div .side_img > div > div:nth-child(2) > div > ul > li img {
  width: 140px;
  height: 140px;
}
#details > div .side_img > div > div:nth-child(2) > ul {
  width: 150px;
  height: 27px;
  display: flex;
  justify-content: space-around;
  margin-top: 10px;
}
#details > div .side_img > div > div:nth-child(2) > ul li {
  width: 27px;
  height: 27px;
}
#details > div .side_img > div > div:nth-child(2) > ul li i {
  font-size: 27px;
}
#details > div .side_img > div > div:nth-child(2) > ul li i:hover {
  background-color: rgba(0, 0, 0, 0.3);
  border-radius: 3px;
}

/* 套餐  setMeal */
#detailsAll #setMeal{
  width: 1005px;
  border: 1px solid #e5e5e5;
  height: 272px;
}
#detailsAll #setMeal .el-tabs__active-bar{
  background-color: #ff0036;
}
#detailsAll #setMeal .el-tabs__item{
  color: #ff0036;
}
#detailsAll #setMeal .el-tabs__item:hover{
  color: #ff0036;
}
/* 详情最后 details_end */
#detailsAll #details_end{
  width: 1190px;
  height: 9207px;
  margin: auto;
  background-color: #228800;
}
</style>



