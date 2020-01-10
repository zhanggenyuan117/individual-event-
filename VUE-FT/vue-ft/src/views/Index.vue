<template>
  <div>
    <div id="lb">
      <div>
        <div class="block">
            <span class="demonstration"></span>
            <el-carousel trigger="click" height="400px">
            <el-carousel-item v-for="item in box" :key="item.id">
                <img :src="item.idView" alt="" class="image">
            </el-carousel-item>
            </el-carousel> 
        </div>
        <div>
          <ul>
            <li>
              <div>
                <div class>
                  <router-link to>住宅家具</router-link>
                </div>
                <div>
                  <router-link to>沙发</router-link>
                  <router-link to>实木床</router-link>
                  <router-link to>餐桌椅</router-link>
                  <router-link to>床垫</router-link>
                </div>
              </div>
              <div>
                <div>
                  <p>
                    <router-link to>客厅</router-link>
                    <router-link to>皮艺沙发</router-link>
                    <router-link to>布艺沙发</router-link>
                    <router-link to>实木沙发</router-link>
                    <router-link to>沙发床</router-link>
                    <router-link to>懒人沙发</router-link>
                    <router-link to>皮布沙发</router-link>
                  </p>

                  <p>
                    <router-link to>客厅架类</router-link>
                    <router-link to>衣帽架</router-link>
                    <router-link to>隔板/置物架</router-link>
                    <router-link to>鞋架</router-link>
                    <router-link to>花架/花几</router-link>
                    <router-link to>多宝阁</router-link>
                    <router-link to>博古架</router-link>
                  </p>

                  <p>
                    <router-link to>床</router-link>
                    <router-link to>实木床</router-link>
                    <router-link to>皮艺床</router-link>
                    <router-link to>布艺床</router-link>
                    <router-link to>儿童床</router-link>
                    <router-link to>板式床</router-link>
                    <router-link to>充气床</router-link>
                    <router-link to>折叠床/午休床</router-link>
                  </p>

                  <p>
                    <router-link to>床垫类</router-link>
                    <router-link to>乳胶床垫</router-link>
                    <router-link to>弹簧床垫</router-link>
                    <router-link to>椰棕床垫</router-link>
                    <router-link to>儿童床垫</router-link>
                    <router-link to>其他床垫</router-link>
                  </p>

                  <img src="/images/lb_side/1.jpg" alt />
                </div>
              </div>
            </li>
            <li>
              <div>
                <div>
                  <router-link to>家装主材</router-link>
                </div>
                <div>
                  <router-link to>智能马桶盖</router-link>
                  <router-link to>浴室柜</router-link>
                  <router-link to>智能马桶</router-link>
                </div>
              </div>
              <div>
                <div>
                  <p>
                    <router-link to>卫浴</router-link>
                    <router-link to>洗面盆</router-link>
                    <router-link to>浴缸</router-link>
                    <router-link to>沐浴房</router-link>
                    <router-link to>角阀</router-link>
                    <router-link to>地漏</router-link>
                  </p>

                  <p>
                    <router-link to>厨房</router-link>
                    <router-link to>水槽套餐</router-link>
                    <router-link to>厨房龙头</router-link>
                    <router-link to>置物架</router-link>
                    <router-link to>水槽单品</router-link>
                    <router-link to>微博炉支架</router-link>
                    <router-link to>水槽下水器</router-link>
                    <router-link to>拉篮</router-link>
                  </p>

                  <p>
                    <router-link to>基础建材</router-link>
                    <router-link to>管材</router-link>
                    <router-link to>板材</router-link>
                    <router-link to>基膜</router-link>
                    <router-link to>墙纸胶</router-link>
                    <router-link to>密封条</router-link>
                    <router-link to>玻璃胶</router-link>
                    <router-link to>壁纸铲刀</router-link>
                    <router-link to>泡沫胶</router-link>
                  </p>

                  <p>
                    <router-link to>地板</router-link>
                    <router-link to>强化复合地板</router-link>
                    <router-link to>实木地板</router-link>
                    <router-link to>实木复合地板</router-link>
                    <router-link to>PVC地板</router-link>
                    <router-link to>地脚线</router-link>
                    <router-link to>竹地板</router-link>
                    <router-link to>防潮防静电地板</router-link>
                  </p>
                  <img src="/images/lb_side/2.jpg" alt />
                </div>
              </div>
            </li>
            <li>
              <div>
                <div>
                  <router-link to>灯具灯饰</router-link>
                </div>
                <div>
                  <router-link to>吸顶灯</router-link>
                  <router-link to>吊灯</router-link>
                  <router-link to>台灯</router-link>
                  <router-link to>筒射灯</router-link>
                </div>
              </div>
              <div>
                <div>
                  <p>
                    <router-link to>吸顶灯</router-link>
                    <router-link to>水晶吸顶灯</router-link>
                    <router-link to>超薄吸顶灯</router-link>
                    <router-link to>创意吸顶灯</router-link>
                  </p>
                  <p>
                    <router-link to>吊灯</router-link>
                    <router-link to>吸吊两用灯</router-link>
                    <router-link to>枝形吊灯</router-link>
                    <router-link to>鱼线吊灯</router-link>
                    <router-link to>风扇吊灯</router-link>
                    <router-link to>其他吊灯</router-link>
                  </p>
                  <p>
                    <router-link to>空间用途</router-link>
                    <router-link to>客厅灯</router-link>
                    <router-link to>书房灯</router-link>
                    <router-link to>卧室灯</router-link>
                    <router-link to>餐厅灯</router-link>
                    <router-link to>厨房灯</router-link>
                    <router-link to>卫生间灯</router-link>
                    <router-link to>阳台灯</router-link>
                  </p>
                  <p>
                    <router-link to>材质推荐</router-link>
                    <router-link to>玻璃</router-link>
                    <router-link to>亚克力</router-link>
                    <router-link to>铝</router-link>
                    <router-link to>木艺</router-link>
                    <router-link to>陶瓷</router-link>
                    <router-link to>铁艺</router-link>
                    <router-link to>云石</router-link>
                    <router-link to>水晶</router-link>
                    <router-link to>彩色玻璃</router-link>
                  </p>
                  <img src="/images/lb_side/3.jpg" alt />
                </div>
              </div>
            </li>
            <li>
              <div>
                <div>
                  <router-link to>电子电工</router-link>
                </div>
                <div>
                  <router-link to>开关插座</router-link>
                  <router-link to>摄像头</router-link>
                  <router-link to>指纹锁</router-link>
                </div>
              </div>
              <div>
                <div>
                  <p>
                    <router-link to>五金</router-link>
                    <router-link to>手动工具</router-link>
                    <router-link to>家用五金</router-link>
                    <router-link to>电工工具</router-link>
                    <router-link to>仪器仪表</router-link>
                  </p>
                  <p>
                    <router-link to>电子电工</router-link>
                    <router-link to>开关</router-link>
                    <router-link to>插座</router-link>
                    <router-link to>接线板</router-link>
                    <router-link to>监控器材</router-link>
                    <router-link to>安防器材</router-link>
                    <router-link to>断路器</router-link>
                    <router-link to>电线</router-link>
                  </p>
                  <p>
                    <router-link to>智能电工</router-link>
                    <router-link to>电控锁</router-link>
                    <router-link to>遥控开关</router-link>
                  </p>
                  <img src alt />
                </div>
              </div>
            </li>
            <li>
              <div>
                <div>
                  <router-link to>全屋定制</router-link>
                </div>
                <div>
                  <router-link to>定制衣柜</router-link>
                  <router-link to>定制橱窗</router-link>
                  <router-link to>门</router-link>
                </div>
              </div>
              <div>
                <div>
                  <p>
                    <router-link to>门</router-link>
                    <router-link to>防盗门</router-link>
                    <router-link to>进户门</router-link>
                    <router-link to>室内门</router-link>
                    <router-link to>卧室门</router-link>
                    <router-link to>卫生间门</router-link>
                    <router-link to>厨房门</router-link>
                    <router-link to>阳台门</router-link>
                    <router-link to>实木门</router-link>
                    <router-link to>复合门</router-link>
                    <router-link to>玻璃门</router-link>
                    <router-link to>免漆门</router-link>
                    <router-link to>烤漆门</router-link>
                  </p>
                  <p>
                    <router-link to>定制衣柜</router-link>
                    <router-link to>定制衣柜</router-link>
                    <router-link to>衣柜定制</router-link>
                    <router-link to>整体定制</router-link>
                  </p>
                  <p>
                    <router-link to>定制榻榻米</router-link>
                    <router-link to>定制榻榻米</router-link>
                    <router-link to>定制儿童房</router-link>
                    <router-link to>定制卧室空间</router-link>
                    <router-link to>榻榻米垫</router-link>
                  </p>
                  <p>
                    <router-link to>定制沐浴房</router-link>
                    <router-link to>定制沐浴房</router-link>
                    <router-link to>整体沐浴房</router-link>
                  </p>
                  <p>
                    <router-link to>定制采暖</router-link>
                    <router-link to>定制暖气片</router-link>
                    <router-link to>定制散热器</router-link>
                    <router-link to>定制地暖</router-link>
                  </p>

                  <p>
                    <router-link to>定制楼梯</router-link>
                    <router-link to>定制楼梯</router-link>
                    <router-link to>整体楼梯</router-link>
                    <router-link to>楼梯扶手</router-link>
                  </p>
                  <img src alt />
                </div>
              </div>
            </li>
            <li>
              <div>
                <div>
                  <router-link to>装修设计</router-link>
                </div>
                <div>
                  <router-link to>整装</router-link>
                  <router-link to>全屋软装</router-link>
                  <router-link to>局部换新</router-link>
                </div>
              </div>
              <div>
                <div>
                  <p>
                    <router-link to>装修套餐</router-link>
                    <router-link to>全包装修</router-link>
                    <router-link to>半包装修</router-link>
                    <router-link to>拎包入住</router-link>
                    <router-link to>局部装修</router-link>
                  </p>
                  <p>
                    <router-link to>装修设计</router-link>
                    <router-link to>免费设计</router-link>
                    <router-link to>软装设计</router-link>
                    <router-link to>套餐设计</router-link>
                    <router-link to>家装设计</router-link>
                    <router-link to>商业空间设计</router-link>
                  </p>
                  <p>
                    <router-link to>装修户型</router-link>
                    <router-link to>联排别墅</router-link>
                    <router-link to>软装套餐</router-link>
                    <router-link to>平层复式</router-link>
                  </p>
                  <p>
                    <router-link to>监理服务</router-link>
                    <router-link to>监理服务</router-link>
                    <router-link to>全程监理</router-link>
                  </p>
                  <p>
                    <router-link to>本地装修</router-link>
                    <router-link to>北京</router-link>
                    <router-link to>上海</router-link>
                    <router-link to>深圳</router-link>
                    <router-link to>广州</router-link>
                    <router-link to>南京</router-link>
                    <router-link to>杭州</router-link>
                    <router-link to>郑州</router-link>
                    <router-link to>天津</router-link>
                    <router-link to>长沙</router-link>
                    <router-link to>秦皇岛</router-link>
                  </p>
                  <img src alt />
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!--  滚轮事件   划出侧边导航栏 -->
    <div id="side_nav">
      <ul id="sUl">
        <li>
          <a href="#recommendBig">推荐</a>
        </li>
        <li>
          <a href="#show_1">住宅</a>
        </li>
        <li>
          <a href="#show_2">休闲</a>
        </li>
        <li>
          <a href="#show_3">灯饰</a>
        </li>
        <li>
          <a href="#show_4">厨房</a>
        </li>
        <li>
          <a href="#show_5">墙地</a>
        </li>
        <li>
          <a href="#show_6">全屋</a>
        </li>
        <li>
          <a href="#show_7">装修</a>
        </li>
        <li>
          <a href="javascript:;">TOP</a>
        </li>
      </ul>
    </div>
    <!-- 推荐品牌 -->
    <div id="recommendBig">
      <div id="recommendSmall">
        <h2>推荐品牌 RECOMMEND BRAND</h2>
        <ul id="recommendSmall_ul" @click="UlChange">
          <li data-to="d1" v-for="(p,i) of msg" :key="i" :i="i">
            <router-link to :class="pno==i?'active':''">{{p}}</router-link>
          </li>
          <!-- <li data-to="d2">
            <router-link to="">家具品牌</router-link>
          </li>
          <li data-to="d3">
            <router-link to="">建材品牌</router-link>
          </li>
          <li data-to="d4">
            <router-link to="">灯具品牌</router-link>
          </li>
          <li data-to="d5">
            <router-link to="">厨卫品牌</router-link>
          </li>
          <li data-to="d6">
            <router-link to="">定制品牌</router-link>
          </li>
          <li data-to="d7">
            <router-link to="">装修品牌</router-link>
          </li>-->
        </ul>
        <div>
          <div class="recommend_1" id="d1" v-if="pno==0">
            <router-link to>
              <img src="/images/recommend/1.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/2.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/3.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/4.png" alt />
            </router-link>
          </div>
          <div class="recommend_1" id="d2" v-else-if="pno==1">
            <router-link to>
              <img src="/images/recommend/17.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/1.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/2.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/17.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/1.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/2.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/3.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/4.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/5.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/6.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/7.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/8.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/9.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/10.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/11.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/12.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/13.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/14.png" alt />
            </router-link>
          </div>
          <div class="recommend_1" id="d3" v-else-if="pno==2">
            <router-link to>
              <img src="/images/recommend/1.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/2.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/3.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/4.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/5.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/9.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/10.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/11.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/12.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/13.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/14.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/15.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/16.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/17.png" alt />
            </router-link>
          </div>
          <div class="recommend_1" id="d4" v-else-if="pno==3">
            <router-link to>
              <img src="/images/recommend/1.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/2.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/3.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/4.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/7.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/8.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/9.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/10.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/11.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/12.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/13.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/14.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/15.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/16.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/17.png" alt />
            </router-link>
          </div>
          <div class="recommend_1" id="d5" v-else-if="pno==4">
            <router-link to>
              <img src="/images/recommend/5.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/6.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/7.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/8.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/9.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/10.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/11.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/12.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/13.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/14.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/15.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/16.png" alt />
            </router-link>
          </div>
          <div class="recommend_1" id="d6" v-else-if="pno==5">
            <router-link to>
              <img src="/images/recommend/17.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/1.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/2.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/17.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/1.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/2.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/3.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/4.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/5.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/6.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/7.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/8.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/9.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/10.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/11.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/12.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/13.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/14.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/15.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/16.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/17.png" alt />
            </router-link>
          </div>
          <div class="recommend_1" id="d7" v-else-if="pno==6">
            <router-link to>
              <img src="/images/recommend/11.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/12.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/13.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/14.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/15.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/16.png" alt />
            </router-link>
            <router-link to>
              <img src="/images/recommend/17.png" alt />
            </router-link>
          </div>
        </div>
      </div>
    </div>
    <!-- 商品展示 -->
    <div id="show">
      <div class="showSmall" id="show_1">
        <h2>
          <img src="/images/show/1.png" alt />
        </h2>
        <div>
          <h3>最新HOT</h3>
          <ul>
            <li>
              <router-link to>沙发</router-link>
            </li>
            <li>
              <router-link to>成套家具</router-link>
            </li>
            <li>
              <router-link to>床</router-link>
            </li>
            <li>
              <router-link to>实木床</router-link>
            </li>
            <li>
              <router-link to>乳胶鞋垫</router-link>
            </li>
            <li>
              <router-link to>电视柜</router-link>
            </li>
            <li>
              <router-link to>电脑椅</router-link>
            </li>
            <li>
              <router-link to>书柜</router-link>
            </li>
            <li>
              <router-link to>餐桌</router-link>
            </li>
            <li>
              <router-link to>儿童床</router-link>
            </li>
            <li>
              <router-link to>儿童学习桌</router-link>
            </li>
            <li>
              <router-link to>儿童衣柜</router-link>
            </li>
            <li>
              <router-link to>餐椅</router-link>
            </li>
          </ul>
        </div>
        <div>
          <router-link to>
            <img src="/images/show/1.jpg" alt />
          </router-link>
        </div>
        <div>
          <router-link to="/details">
            <p>美式实木双人床</p>
            <span>￥1999</span>
            <span>￥7134</span>
            <img src="/images/show/show_1_1.jpg" alt />
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show//show_1_2.jpg" alt />
            <p class="show_p">天然椰棕儿童床垫</p>
            <span class="show_span_1">￥1499</span>
            <span class="show_span_2">￥2998</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show/show_1_3.jpg" alt />
            <p class="show_p">思涟乳胶床垫</p>
            <span class="show_span_1">￥7790</span>
            <span class="show_span_2">￥11288</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show/show_1_4.jpg" alt />
            <p class="show_p">大自然孟悦</p>
            <span class="show_span_1">￥1999</span>
            <span class="show_span_2">￥3998</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show/show_1_5.jpg" alt />
            <p class="show_p">思涟乳胶床垫</p>
            <span class="show_span_1">￥9088</span>
            <span class="show_span_2">￥13288</span>
          </router-link>
        </div>
        <div>
          <span>BRAND</span>
          <span>住宅家具品牌推荐</span>
          <router-link to>
            <img src="/images/show/show_2_1.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_2.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_3.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_4.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_5.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_6.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_7.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_8.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
        </div>
      </div>
      <!-- 第二个 -->
      <div class="showSmall" id="show_2">
        <h2>
          <img src="/images/show/1.png" alt />
        </h2>
        <div>
          <h3>最新HOT</h3>
          <ul>
            <li>
              <router-link to>坐具</router-link>
            </li>
            <li>
              <router-link to>架类</router-link>
            </li>
            <li>
              <router-link to>简易衣柜</router-link>
            </li>
            <li>
              <router-link to>鞋柜</router-link>
            </li>
            <li>
              <router-link to>户外家具</router-link>
            </li>
            <li>
              <router-link to>几类</router-link>
            </li>
            <li>
              <router-link to>折叠床</router-link>
            </li>
            <li>
              <router-link to>桌类</router-link>
            </li>
          </ul>
        </div>
        <div>
          <router-link to>
            <img src="/images/show_1/1.jpg" alt />
          </router-link>
        </div>
        <div>
          <router-link to>
            <p>多功能趟门衣柜</p>
            <span>￥2380</span>
            <span>￥4360</span>
            <img src="/images/show_1/2.jpg" alt />
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_1/3.jpg" alt />
            <p class="show_p">纯实木餐桌椅组合</p>
            <span class="show_span_1">￥1872</span>
            <span class="show_span_2">￥5475</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_1/4.jpg" alt />
            <p class="show_p">自带护脊腰枕</p>
            <span class="show_span_1">￥399</span>
            <span class="show_span_2">￥1388</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_1/5.jpg" alt />
            <p class="show_p">左右餐桌椅套装</p>
            <span class="show_span_1">￥4259</span>
            <span class="show_span_2">￥10140</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_1/6.jpg" alt />
            <p class="show_p">优木纯实木电视柜</p>
            <span class="show_span_1">￥2340</span>
            <span class="show_span_2">￥6500</span>
          </router-link>
        </div>
        <div>
          <span>BRAND</span>
          <span>住宅家具品牌推荐</span>
          <router-link to>
            <img src="/images/show/show_2_1.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_2.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_3.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_4.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_5.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_6.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_7.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_8.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
        </div>
      </div>
      <!-- 第三个 -->
      <div class="showSmall" id="show_3">
        <h2>
          <img src="/images/show_3/1.png" alt />
        </h2>
        <div>
          <h3>最新HOT</h3>
          <ul>
            <li>
              <router-link to>吸顶灯</router-link>
            </li>
            <li>
              <router-link to>吸吊两用灯</router-link>
            </li>
            <li>
              <router-link to>阅读台灯</router-link>
            </li>
            <li>
              <router-link to>LED光源</router-link>
            </li>
            <li>
              <router-link to>卧室灯</router-link>
            </li>
            <li>
              <router-link to>客厅灯</router-link>
            </li>
            <li>
              <router-link to>餐厅灯</router-link>
            </li>
            <li>
              <router-link to>筒灯</router-link>
            </li>
            <li>
              <router-link to>家用五金</router-link>
            </li>
            <li>
              <router-link to>电工工具</router-link>
            </li>
            <li>
              <router-link to>开关</router-link>
            </li>
            <li>
              <router-link to>接线板</router-link>
            </li>
            <li>
              <router-link to>智能指纹锁</router-link>
            </li>
          </ul>
        </div>
        <div>
          <router-link to>
            <img src="/images/show_3/1.jpg" alt />
          </router-link>
        </div>
        <div>
          <router-link to>
            <p>世达汽修150件套</p>
            <span>￥2331</span>
            <span>￥2331</span>
            <img src="/images/show_3/2.jpg" alt />
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_3/3.jpg" alt />
            <p class="show_p">博世冲击手电钻</p>
            <span class="show_span_1">￥499</span>
            <span class="show_span_2">￥1398</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_3/4.jpg" alt />
            <p class="show_p">优利德数字示波器</p>
            <span class="show_span_1">￥790</span>
            <span class="show_span_2">￥1288</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show/show_1_4.jpg" alt />
            <p class="show_p">大自然孟悦</p>
            <span class="show_span_1">￥1999</span>
            <span class="show_span_2">￥3998</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show/show_1_5.jpg" alt />
            <p class="show_p">思涟乳胶床垫</p>
            <span class="show_span_1">￥9088</span>
            <span class="show_span_2">￥13288</span>
          </router-link>
        </div>
        <div>
          <span>BRAND</span>
          <span>住宅家具品牌推荐</span>
          <router-link to>
            <img src="/images/show/show_2_1.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_2.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_3.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_4.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_5.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_6.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_7.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_8.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
        </div>
      </div>
      <!-- 第四个 -->
      <div class="showSmall" id="show_4">
        <h2>
          <img src="/images/show_4/1.png" alt />
        </h2>
        <div>
          <h3>最新HOT</h3>
          <ul>
            <li>
              <router-link to>品质厨卫馆</router-link>
            </li>
            <li>
              <router-link to>智能马桶</router-link>
            </li>
            <li>
              <router-link to>马桶</router-link>
            </li>
            <li>
              <router-link to>智能马桶盖</router-link>
            </li>
            <li>
              <router-link to>浴室柜</router-link>
            </li>
            <li>
              <router-link to>花洒</router-link>
            </li>
            <li>
              <router-link to>地漏</router-link>
            </li>
            <li>
              <router-link to>毛巾架</router-link>
            </li>
            <li>
              <router-link to>浴缸</router-link>
            </li>
            <li>
              <router-link to>沐浴房</router-link>
            </li>
            <li>
              <router-link to>水槽</router-link>
            </li>
            <li>
              <router-link to>龙头</router-link>
            </li>
            <li>
              <router-link to>置物架</router-link>
            </li>
          </ul>
        </div>
        <div>
          <router-link to>
            <img src="/images/show_4/1.jpg" alt />
          </router-link>
        </div>
        <div>
          <router-link to>
            <p>华艺浴室组合套装</p>
            <span>￥999</span>
            <span>￥1134</span>
            <img src="/images/show_4/2.jpg" alt />
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_4/3.jpg" alt />
            <p class="show_p">松下智能马桶盖</p>
            <span class="show_span_1">￥3680</span>
            <span class="show_span_2">￥3990</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_4/4.jpg" alt />
            <p class="show_p">伊奈典雅浴室柜</p>
            <span class="show_span_1">￥5990</span>
            <span class="show_span_2">￥6288</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_4/5.jpg" alt />
            <p class="show_p">九牧虹吸马桶</p>
            <span class="show_span_1">￥999</span>
            <span class="show_span_2">￥1998</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_4/6.jpg" alt />
            <p class="show_p">实木浴室柜组合</p>
            <span class="show_span_1">￥1988</span>
            <span class="show_span_2">￥4288</span>
          </router-link>
        </div>
        <div>
          <span>BRAND</span>
          <span>住宅家具品牌推荐</span>
          <router-link to>
            <img src="/images/show/show_2_1.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_2.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_3.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_4.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_5.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_6.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_7.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_8.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
        </div>
      </div>
      <!-- 第五个 -->
      <div class="showSmall" id="show_5">
        <h2>
          <img src="/images/show_5/1.png" alt />
        </h2>
        <div>
          <h3>最新HOT</h3>
          <ul>
            <li>
              <router-link to>多功能浴霸</router-link>
            </li>
            <li>
              <router-link to>实木地板</router-link>
            </li>
            <li>
              <router-link to>复合地板</router-link>
            </li>
            <li>
              <router-link to>墙纸</router-link>
            </li>
            <li>
              <router-link to>无纺布墙纸</router-link>
            </li>
            <li>
              <router-link to>3D墙纸</router-link>
            </li>
            <li>
              <router-link to>涂料</router-link>
            </li>
            <li>
              <router-link to>油漆</router-link>
            </li>
            <li>
              <router-link to>瓷砖</router-link>
            </li>
            <li>
              <router-link to>仿古砖</router-link>
            </li>
            <li>
              <router-link to>釉面砖</router-link>
            </li>
            <li>
              <router-link to>玻化砖</router-link>
            </li>
            <li>
              <router-link to>美缝剂</router-link>
            </li>
          </ul>
        </div>
        <div>
          <router-link to>
            <img src="/images/show_5/1.jpg" alt />
          </router-link>
        </div>
        <div>
          <router-link to>
            <p>罗浮威尔大理石瓷砖</p>
            <span>￥88</span>
            <span>￥234</span>
            <img src="/images/show_5/2.jpg" alt />
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_5/3.jpg" alt />
            <p class="show_p">防水维修服务</p>
            <span class="show_span_1">￥269</span>
            <span class="show_span_2">￥498</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_5/4.jpg" alt />
            <p class="show_p">器乐坊地面隔音减震垫</p>
            <span class="show_span_1">￥34</span>
            <span class="show_span_2">￥88</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_5/5.jpg" alt />
            <p class="show_p">厨卫灯铝材平板灯</p>
            <span class="show_span_1">￥199</span>
            <span class="show_span_2">￥298</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_5/6.jpg" alt />
            <p class="show_p">现代简约素色墙纸</p>
            <span class="show_span_1">￥69</span>
            <span class="show_span_2">￥288</span>
          </router-link>
        </div>
        <div>
          <span>BRAND</span>
          <span>住宅家具品牌推荐</span>
          <router-link to>
            <img src="/images/show/show_2_1.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_2.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_3.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_4.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_5.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_6.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_7.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_8.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
        </div>
      </div>
      <!-- 第六个 -->
      <div class="showSmall" id="show_6">
        <h2>
          <img src="/images/show_6/1.png" alt />
        </h2>
        <div>
          <h3>最新HOT</h3>
          <ul>
            <li>
              <router-link to>室内门</router-link>
            </li>
            <li>
              <router-link to>实木门</router-link>
            </li>
            <li>
              <router-link to>防盗门</router-link>
            </li>
            <li>
              <router-link to>橱柜</router-link>
            </li>
            <li>
              <router-link to>定制衣柜</router-link>
            </li>
            <li>
              <router-link to>儿童空间定制</router-link>
            </li>
            <li>
              <router-link to>全屋空间定制</router-link>
            </li>
            <li>
              <router-link to>榻榻米</router-link>
            </li>
            <li>
              <router-link to>定制门窗</router-link>
            </li>
            <li>
              <router-link to>阳光房</router-link>
            </li>
            <li>
              <router-link to>暖气片</router-link>
            </li>
            <li>
              <router-link to>定制沐浴房</router-link>
            </li>
            <li>
              <router-link to>地暖</router-link>
            </li>
            <li>
              <router-link to>整体楼梯</router-link>
            </li>
          </ul>
        </div>
        <div>
          <router-link to>
            <img src="/images/show_6/1.jpg" alt />
          </router-link>
        </div>
        <div>
          <router-link to>
            <p>TATA木门</p>
            <span>￥2699</span>
            <span>￥3434</span>
            <img src="/images/show_6/2.jpg" alt />
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_6/3.jpg" alt />
            <p class="show_p">3D无漆木门套装</p>
            <span class="show_span_1">￥4999</span>
            <span class="show_span_2">￥6998</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_6/4.jpg" alt />
            <p class="show_p">尚品宅配榻榻米</p>
            <span class="show_span_1">￥1990</span>
            <span class="show_span_2">￥2288</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_6/5.jpg" alt />
            <p class="show_p">欧派橱柜</p>
            <span class="show_span_1">￥1099</span>
            <span class="show_span_2">￥1998</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_6/6.jpg" alt />
            <p class="show_p">好莱客榻榻米</p>
            <span class="show_span_1">￥188</span>
            <span class="show_span_2">￥288</span>
          </router-link>
        </div>
        <div>
          <span>BRAND</span>
          <span>住宅家具品牌推荐</span>
          <router-link to>
            <img src="/images/show/show_2_1.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_2.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_3.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_4.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_5.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_6.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_7.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_8.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
        </div>
      </div>
      <!-- 第七个 -->
      <div class="showSmall" id="show_7">
        <h2>
          <img src="/images/show_7/1.png" alt />
        </h2>
        <div>
          <h3>最新HOT</h3>
          <ul>
            <li>
              <router-link to>全包装修</router-link>
            </li>
            <li>
              <router-link to>半包装修</router-link>
            </li>
            <li>
              <router-link to>拎包入住</router-link>
            </li>
            <li>
              <router-link to>局部装修</router-link>
            </li>
            <li>
              <router-link to>软装设计</router-link>
            </li>
            <li>
              <router-link to>套餐设计</router-link>
            </li>
            <li>
              <router-link to>家装设计</router-link>
            </li>
            <li>
              <router-link to>商业空间设计</router-link>
            </li>
            <li>
              <router-link to>监理服务</router-link>
            </li>
            <li>
              <router-link to>全程监理</router-link>
            </li>
            <li>
              <router-link to>联排别墅</router-link>
            </li>
            <li>
              <router-link to>软装套餐</router-link>
            </li>
            <li>
              <router-link to>平层复式</router-link>
            </li>
          </ul>
        </div>
        <div>
          <router-link to>
            <img src="/images/show_7/1.jpg" alt />
          </router-link>
        </div>
        <div>
          <router-link to>
            <p>家装e站整装服务</p>
            <span>￥799</span>
            <span>￥999</span>
            <img src="/images/show_7/2.jpg" alt />
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_7/3.jpg" alt />
            <p class="show_p">家装驿站三居室</p>
            <span class="show_span_1">￥5000</span>
            <span class="show_span_2">￥5199</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_7/4.jpg" alt />
            <p class="show_p">1399元/m雅奢装</p>
            <span class="show_span_1">￥1399</span>
            <span class="show_span_2">￥2288</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_7/5.jpg" alt />
            <p class="show_p">百安居卫生间</p>
            <span class="show_span_1">￥5000</span>
            <span class="show_span_2">￥5599</span>
          </router-link>
          <router-link to>
            <img class="show_img" src="/images/show_7/6.jpg" alt />
            <p class="show_p">橙家装修公司</p>
            <span class="show_span_1">￥1776</span>
            <span class="show_span_2">￥1776</span>
          </router-link>
        </div>
        <div>
          <span>BRAND</span>
          <span>住宅家具品牌推荐</span>
          <router-link to>
            <img src="/images/show/show_2_1.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_2.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_3.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_4.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_5.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_6.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_7.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
          <router-link to>
            <img src="/images/show/show_2_8.jpg" alt />
            <p>林氏木业家具</p>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      box:[
            {id:0,idView:require("../assets/carousel/big_1.jpg")},
            {id:1,idView:require("../assets/carousel/big_2.jpg")},
            {id:2,idView:require("../assets/carousel/big_3.jpg")},
            {id:3,idView:require("../assets/carousel/big_4.jpg")}
          ],
      msg: [
        "热门品牌",
        "家具品牌",
        "建材品牌",
        "灯具品牌",
        "厨卫品牌",
        "定制品牌",
        "装修品牌"
      ],
      pno: 0
    };
  },
  methods: {
    UlChange(e) {
      if (e.target.nodeName == "A") {
        for (let i = 0; i < this.msg.length; i++) {
          if (e.target.innerHTML == this.msg[i]) {
            this.pno = i;
          }
        }
      }
    },
    listScroll() {
      window.addEventListener("scroll", function() {
        var scrollTop = 0;
        var sUl = document.getElementById("sUl");
        var lis = Array.from(document.querySelectorAll("#sUl>li"));
        var li = document.querySelector("#sUl>li:last-child");
        window.onscroll = function() {
          scrollTop =
            document.body.scrollTop || document.documentElement.scrollTop;
          console.log(scrollTop);
          if (scrollTop > 200) {
            sUl.style.display = "block";
          } else {
            sUl.style.display = "none";
          }
        };
        li.onclick = function(e) {
          e.preventDefault();
          var distance = scrollTop;
          var totalTime = 400;
          var steps = 50;
          var step = distance / steps;
          var interval = totalTime / steps;
          var timer = setInterval(function() {
            window.scrollBy(0, -step);
            steps--;
            if (steps == 0) {
              clearInterval(timer);
              steps = 50;
            }
          }, interval);
        };
      });
    }
  },
  created() {
    this.listScroll();
  }
};
</script>>
  
<style scoped>
/* 轮播图   侧边导航栏*/
* {
  margin: 0;
  padding: 0;
}
#lb {
  width: 100%;
  height: 400px;
  background: #fff;
}
#lb > div {
  width: 1190px;
  height: 400px;
  margin: auto;
  position: relative;
}
 #lb>div>.block{
  width: 1000px;
  height: 400px;
  margin-left: 190px;
  position:absolute;
}
#lb>div>.block img{
  width: 100%;
  height: 100%;
} 
#lb > div > div:last-child {
  width: 190px;
  height: 400px;
  background: #b21a0f;
  position: absolute;
  top: 0;
  left: 0;
}
#lb > div > div:last-child > ul {
  width: 190px;
}
#lb > div > div:last-child > ul > li {
  width: 100%;
  height: 55px;
  margin-top: 8px;
}

#lb > div > div:last-child > ul > li::before {
  content: "";
  display: table;
}
#lb > div > div:last-child > ul > li > div:nth-child(1) > div:nth-child(1),
#lb > div > div:last-child > ul > li > div:nth-child(1) > div:nth-child(2) {
  margin-left: 15px;
}
#lb > div > div:last-child > ul > li > div:nth-child(1) > div:nth-child(2) {
  margin-top: 9px;
}
#lb > div > div:last-child > ul > li > div:nth-child(1) > div:first-child > a {
  color: #ffffff;
  font-size: 14px;
}
#lb > div > div:last-child > ul > li > div:nth-child(1) > div:nth-child(2) > a {
  color: #e5cccc;
  font-size: 12px;
}
#lb > div > div:last-child > ul > li > div:nth-child(2) {
  width: 1000px;
  height: 450px;
  background: #ffffff;
  position: absolute;
  top: 0px;
  left: 190px;
  border: 1px solid #000000;
  border-left: 0;
  display: none;
}
#lb > div > div:last-child > ul > li > div:nth-child(2) > div {
  width: 800px;
  height: 450px;
  margin: 15px auto 0;
}
#lb > div > div:last-child > ul > li > div:nth-child(2) > div > p {
  line-height: 50px;
  border-bottom: 1px solid #e8e8e8;
}
#lb > div > div:last-child > ul > li > div:nth-child(2) > div > img {
  width: 700px;
  height: 150px;
  margin: 20px 0 0 50px;
}
#lb
  > div
  > div:last-child
  > ul
  > li
  > div:nth-child(2)
  > div
  > p
  > a:first-child {
  font-size: 16px;
  color: #000000;
  padding-right: 50px;
}
#lb
  > div
  > div:last-child
  > ul
  > li
  > div:nth-child(2)
  > div
  > p
  > a:not(first-child) {
  font-size: 12px;
  color: #666;
  margin-left: 15px;
}
#lb > div > div:last-child > ul > li > div:nth-child(1):hover {
  background-color: #ffffff;
}
#lb
  > div
  > div:last-child
  > ul
  > li
  > div:nth-child(1):hover
  > div:nth-child(1)
  > a {
  color: #000;
}
#lb
  > div
  > div:last-child
  > ul
  > li
  > div:nth-child(1):hover
  > div:nth-child(2)
  > a {
  color: #333;
}
#lb > div > div:last-child > ul > li:hover > div:nth-child(2) {
  display: block;
  z-index: 100;
}

/* 滚轮事件   划出侧边导航栏 */
#side_nav > ul {
  width: 35px;
  height: 400px;
  position: fixed;
  bottom: 100px;
  left: 50%;
  margin-left: -650px;
  display: none;
}
#side_nav > ul > li {
  width: 35px;
  height: 40px;
  border-bottom: 1px solid #e5e5e5;
}

#side_nav > ul > li a {
  display: block;
  width: 100%;
  height: 100%;
  font-size: 12px;
  color: #000;
  text-align: center;
  line-height: 40px;
}
#side_nav > ul > li:last-child {
  background-color: #000;
}
#side_nav > ul > li:last-child a {
  color: #fff;
}
#side_nav > ul > li a:hover {
  background-color: green;
  color: #fff;
}

/* 推荐品牌 */
#recommendBig {
  width: 100%;
  margin: 10px 0;
}

#recommendBig > #recommendSmall {
  width: 1190px;
  margin: auto;
}

#recommendBig > #recommendSmall > h2 {
  font-size: 24px;
  line-height: 40px;
  font-weight: 700;
  border-bottom: 2px solid #000000;
}
#recommendBig > #recommendSmall > ul {
  width: 1190px;
  height: 50px;
  display: flex;
  justify-content: space-between;
  margin: 7px auto;
}
#recommendBig > #recommendSmall > ul > li {
  width: 161px;
  line-height: 50px;
  background: #e5e5e5;
  text-align: center;
  border-radius: 10px;
}
#recommendBig > #recommendSmall > ul > li .active {
  background-color: #f00;
  color: #fff;
}
#recommendBig > #recommendSmall > ul > li > a {
  display: block;
  width: 100%;
  height: 100%;
  color: #000000;
  font-size: 14px;
  border-radius: 10px;
}
#recommendBig > #recommendSmall > div {
  width: 1190px;
  height: 214px;
  position: relative;
}

#recommendBig > #recommendSmall > div > .recommend_1 {
  width: 1190px;
  height: 214px;
  background-color: #fff;
  position: absolute;
  left: 0;
  top: 0;
}
#recommendBig > #recommendSmall > div > .recommend_1 > a {
  display: block;
  width: 12.5%;
  height: 71px;
  float: left;
  border: 1px solid #e5e5e5;
  box-sizing: border-box;
}

#recommendBig > #recommendSmall > div > .recommend_1 > a > img {
  width: 120px;
  height: 60px;
  margin: 5.5px auto;
}

/* 商品展示 */
#show {
  width: 100%;
}

#show::after {
  content: "";
  display: block;
  clear: both;
}

#show > .showSmall {
  width: 1190px;
  height: 516px;
  margin: 40px auto 10px;
}

#show > .showSmall > h2 {
  width: 100%;
  height: 40px;
  border-bottom: 1px solid #ff0000;
}

#show > .showSmall > h2 > img {
  width: 629px;
  height: 33px;
  margin: auto;
  margin-top: 3.5px;
}

#show > .showSmall > div:nth-of-type(1) {
  width: 98px;
  height: 430px;
  padding: 15px 0 0 5px;
  float: left;
}

#show > .showSmall > div:nth-of-type(1) > h3 {
  font-size: 14px;
  color: #333333;
  font-weight: 700;
}

#show > .showSmall > div:nth-of-type(1) > ul {
  width: 98px;
  height: 396px;
  margin-top: 20px;
}
#show > .showSmall > div:nth-of-type(1) > ul > li {
  margin-bottom: 10px;
}
#show > .showSmall > div:nth-of-type(1) > ul > li > a {
  font-size: 12px;
  color: #000000;
}
#show > .showSmall > div:nth-of-type(1) > ul > li > a:hover {
  color: #f00;
  text-decoration: underline;
}

#show > .showSmall > div:nth-of-type(2) {
  float: left;
}

#show > .showSmall > div:nth-of-type(3) {
  width: 597px;
  height: 475px;
  float: left;
}

#show > .showSmall > div:nth-of-type(3) > a {
  box-sizing: border-box;
  border-right: 1px solid #e8e8e8;
}
#show > .showSmall > div:nth-of-type(3) > a > img {
  transition: all 1s;
}
#show > .showSmall > div:nth-of-type(3) > a:nth-child(1),
#show > .showSmall > div:nth-of-type(3) > a:nth-child(2) {
  border-bottom: 1px solid #e8e8e8;
}

#show > .showSmall > div:nth-of-type(3) > a:nth-child(1) {
  display: block;
  width: 397px;
  height: 236px;
  padding-left: 20px;
  position: relative;
  float: left;
}

#show > .showSmall > div:nth-of-type(3) > a:nth-child(1)::before {
  content: "";
  display: table;
}

#show > .showSmall > div:nth-of-type(3) > a:nth-child(1) > p {
  font-size: 14px;
  width: 98px;
  line-height: 27px;
  border-bottom: 1px solid #000000;
  font-weight: 600;
  color: #101010;
  margin-top: 50px;
}

#show > .showSmall > div:nth-of-type(3) > a:nth-child(1) > span:nth-of-type(1) {
  font-size: 21px;
  color: #f14f4f;
  margin: 5px 0 0 15px;
}

#show > .showSmall > div:nth-of-type(3) > a:nth-child(1) > span:nth-of-type(2) {
  font-size: 15px;
  color: #a6a6a6;
  text-decoration: line-through;
}

#show > .showSmall > div:nth-of-type(3) > a:nth-child(1) > img {
  width: 212px;
  height: 212px;
  padding: 12px;
  position: absolute;
  top: 0;
  right: 0;
}

#show > .showSmall > div:nth-of-type(3) > a:nth-child(2),
#show > .showSmall > div:nth-of-type(3) > a:nth-child(3),
#show > .showSmall > div:nth-of-type(3) > a:nth-child(4),
#show > .showSmall > div:nth-of-type(3) > a:nth-child(5) {
  display: block;
  width: 199px;
  height: 237px;
  float: left;
}
#show > .showSmall > div:nth-of-type(3) > a:hover > img {
  transform: scale(1.05);
}
#show > .showSmall > div:nth-of-type(3) > a:hover {
  border: 1px solid #f00;
}
#show > .showSmall > div:nth-of-type(3) > a:nth-child(2) > .show_img,
#show > .showSmall > div:nth-of-type(3) > a:nth-child(3) > .show_img,
#show > .showSmall > div:nth-of-type(3) > a:nth-child(4) > .show_img,
#show > .showSmall > div:nth-of-type(3) > a:nth-child(5) > .show_img {
  width: 160px;
  height: 160px;
  padding: 16px 19px 8px;
  position: absolute;
  margin-left: 19.5px;
}

.show_p {
  font-size: 12px;
  color: #4c4c4c;
  text-align: center;
  margin-top: 185px;
}

.show_span_1 {
  color: #f14f4f;
  font-size: 18px;
  margin-left: 45px;
}

.show_span_2 {
  font-size: 13px;
  color: #a6a6a6;
  text-decoration: line-through;
}
#show > .showSmall > div:nth-of-type(4) {
  width: 283px;
  height: 475px;
  float: left;
}
#show > .showSmall > div:nth-of-type(4) > a {
  width: 130px;
  height: 87px;
  float: left;
  margin-top: 10px;
}

#show > .showSmall > div:nth-of-type(4) > a > img {
  width: 90px;
  height: 45px;
  margin: 10px auto;
}
#show > .showSmall > div:nth-of-type(4) > a > p {
  font-size: 12px;
  color: #868686;
  text-align: center;
}
#show > .showSmall > div:nth-of-type(4) > span:nth-of-type(1) {
  font-size: 22px;
  color: #e73c76;
  border-bottom: 2px solid #e73c76;
}
#show > .showSmall > div:nth-of-type(4) > span:nth-of-type(2) {
  font-size: 18px;
  color: #737373;
  border-bottom: 1px solid #e8e8e8;
}
</style>
