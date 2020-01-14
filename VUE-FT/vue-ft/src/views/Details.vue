<template>
  <div id="detailsAll">
    <div id="details">
      <hr/>
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
            v-show="bool" :style="{'background-image':`url(${small_img[small_img_i]})`,
          'background-position':`-${(parseInt(maskStyle.left))*1.4}px -${(parseInt(maskStyle.top))*1.4}px`}"
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
                  @mouseenter="imgClickHandler(index)"
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
        <el-tab-pane label="1011款搭配套餐" name="first">
          <div class="setMealFirstDiv">
            <div class="setMealSecondDiv">
              <ul>
                <li v-for="(p,i) of setMealSecondDiv_ul_1" :key="i">
                  <a href="javascript:;">
                    <img :src="p.url" style="width:130px;height:130px;">
                  </a>
                  <input type="checkbox" :checked="i==0?true:false"><span>价格 ¥{{p.price.toFixed(2)}}-¥{{(p.price*2).toFixed(2)}}</span>
                </li>
              </ul>
              <div>
                <p><span>套餐价:</span><span>¥16187.00-19852.00</span></p>
                <a href="javascript:;">查看套餐</a>
              </div>
            </div>
          </div>
        </el-tab-pane>
        <el-tab-pane label="1011现代套房" name="second">
          <div class="setMealFirstDiv">
            <div class="setMealSecondDiv">
              <ul>
                <li v-for="(p,i) of setMealSecondDiv_ul_2" :key="i">
                  <a href="javascript:;">
                    <img :src="p.url" style="width:130px;height:130px;">
                  </a>
                  <input type="checkbox" :checked="i==0?true:false"><span>价格 ¥{{p.price.toFixed(2)}}-¥{{(p.price*2).toFixed(2)}}</span>
                </li>
              </ul>
              <div>
                <p><span>套餐价:</span><span>¥16187.00-19852.00</span></p>
                <a href="javascript:;">查看套餐</a>
              </div>
            </div>
          </div>
        </el-tab-pane>
        <el-tab-pane label="布艺沙发系列" name="third">
          <div class="setMealFirstDiv">
            <div class="setMealSecondDiv">
              <ul>
                <li v-for="(p,i) of setMealSecondDiv_ul_3" :key="i">
                  <a href="javascript:;">
                    <img :src="p.url" style="width:130px;height:130px;">
                  </a>
                  <input type="checkbox" :checked="i==0?true:false"><span>价格 ¥{{p.price.toFixed(2)}}-¥{{(p.price*2).toFixed(2)}}</span>
                </li>
              </ul>
              <div>
                <p><span>套餐价:</span><span>¥16187.00-19852.00</span></p>
                <a href="javascript:;">查看套餐</a>
              </div>
            </div>
          </div>
        </el-tab-pane>
      </el-tabs>
    </div>
    <div id="details_end">
      <div class="details_end_left">
        <div class="details_end_left_one">
          <div>
            <div>
              <a>gkg家具旗舰店<span></span></a>
            </div>
            <div>
              <p>天天三年店</p>
            </div>
            <div>
              <p><span>描述</span><span>服务</span><span>物流</span></p>
              <p><span>4.8↓</span><span>4.7↓</span><span>4.7↓</span></p>
            </div>
            <div>
              <a href="javascript:;">进店逛逛</a>
              <a href="javascript:;">收藏店铺</a>
            </div>
          </div>
        </div>
        <div class="details_end_left_two">
          <!-- 1 -->
          <div>
            <div>
              <a href="javascript:;">正品保障</a>
              <a href="javascript:;">提供发票</a>
              <a href="javascript:;">七天退换</a>
            </div>
          </div>
          <!-- 2 -->
          <div>
            <div>
              <div>
                <ul>
                  <li><span>关键字:</span><input type="text" placeholder="沙发"></li>
                  <li><span>价格</span><input type="text"><span>-</span><input type="text"></li>
                  <li><button>搜索</button></li>
                  <li>
                    <a href="javascript:;">沙发</a>
                    <a href="javascript:;">茶几</a>
                    <a href="javascript:;">电视柜</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <!-- 3 -->
          <div>
            <div>
              <div>
                <div>
                  <ul class="ul190" style="float:left;margin-left:10px;line-height:30px;_margin-left:5px;margin-right:10px;">
                      <li style="display:block;float:left;font-weight:bold;color:#000;clear:both;width:170px;font-size:14px;height:25px;line-height:25px;border-bottom:1px #999 dotted;">售前</li>
                      <li style="float:left;margin-left:10px;">布布</li>
                      <li style="float:left;margin-left:5px;padding-top:1px;"><a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&amp;touid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;charset=utf-8&amp;itemId=568096950295&amp;fromid=cntaobao"><img border="0" src="//amos.alicdn.com/online.aw?v=2&amp;uid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;site=cntaobao&amp;s=2&amp;charset=utf-8" alt="请点击直接访问" class="img-ks-lazyload"></a></li>
                      <li style="float:left;margin-left:10px;">糖糖</li>
                      <li style="float:left;margin-left:5px;padding-top:1px;"><a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&amp;touid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;charset=utf-8&amp;itemId=568096950295&amp;fromid=cntaobao"><img border="0" src="//amos.alicdn.com/online.aw?v=2&amp;uid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;site=cntaobao&amp;s=2&amp;charset=utf-8" alt="请点击直接访问" class="img-ks-lazyload"></a></li>
                      <li style="float:left;margin-left:10px;">丁丁</li>
                      <li style="float:left;margin-left:5px;padding-top:1px;"><a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&amp;touid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;charset=utf-8&amp;itemId=568096950295&amp;fromid=cntaobao"><img border="0" src="//amos.alicdn.com/online.aw?v=2&amp;uid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;site=cntaobao&amp;s=2&amp;charset=utf-8" alt="请点击直接访问" class="img-ks-lazyload"></a></li>
                        <br style="clear:both;">
                      <li style="float:left;margin-left:10px;">果果</li>
                      <li style="float:left;margin-left:5px;padding-top:1px;"><a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&amp;touid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;charset=utf-8&amp;itemId=568096950295&amp;fromid=cntaobao"><img border="0" src="//amos.alicdn.com/online.aw?v=2&amp;uid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;site=cntaobao&amp;s=2&amp;charset=utf-8" alt="请点击直接访问" class="img-ks-lazyload"></a></li>
                      <li style="float:left;margin-left:10px;">米米</li>
                      <li style="float:left;margin-left:5px;padding-top:1px;"><a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&amp;touid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;charset=utf-8&amp;itemId=568096950295&amp;fromid=cntaobao"><img border="0" src="//amos.alicdn.com/online.aw?v=2&amp;uid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;site=cntaobao&amp;s=2&amp;charset=utf-8" alt="请点击直接访问" class="img-ks-lazyload"></a></li>
							    </ul>
                  <ul class="ul190" style="float:left;margin-left:10px;line-height:30px;_margin-left:5px;margin-right:10px;">
                    <li style="display:block;float:left;font-weight:bold;color:#000;clear:both;width:170px;font-size:14px;height:25px;line-height:25px;border-bottom:1px #999 dotted;">售后</li>
                    
                    <li style="float:left;margin-left:10px;">素素</li>
                    <li style="float:left;margin-left:5px;padding-top:1px;"><a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&amp;touid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;charset=utf-8&amp;itemId=568096950295&amp;fromid=cntaobao"><img border="0" src="//amos.alicdn.com/online.aw?v=2&amp;uid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;site=cntaobao&amp;s=2&amp;charset=utf-8" alt="请点击直接访问" class="img-ks-lazyload"></a></li>
                    <li style="float:left;margin-left:10px;">诗诗</li>
                    <li style="float:left;margin-left:5px;padding-top:1px;"><a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&amp;touid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;charset=utf-8&amp;itemId=568096950295&amp;fromid=cntaobao"><img border="0" src="//amos.alicdn.com/online.aw?v=2&amp;uid=gkg%E5%AE%B6%E5%85%B7%E6%97%97%E8%88%B0%E5%BA%97&amp;site=cntaobao&amp;s=2&amp;charset=utf-8" alt="请点击直接访问" class="img-ks-lazyload"></a></li>
							    </ul>
                  <ul class="ul190" style="float:left;margin-left:10px;line-height:30px;_margin-left:5px;margin-right:10px;">
                    <li style="display:block;float:left;font-weight:bold;color:#000;clear:both;width:170px;font-size:14px;height:25px;line-height:25px;border-bottom:1px #999 dotted;">工作时间：</li>
                    <li style="float:left;margin-left:5px;padding-top:1px;">8:00-24:00 节假日不休</li>
		              </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- 4 -->
          <div>
            <div>
              <a href="javascript:;"></a>
              <a href="javascript:;"></a>
            </div>
          </div>
          <!-- 5 -->
          <div>
            <div><span>宝贝分类</span></div>
            <div>
              <el-tree :data="data" :props="defaultProps" @node-click="handleNodeClick"></el-tree>
            </div>
          </div>
          <!-- 6 -->
          <div>
            <div><span>宝贝排行榜</span></div>
            <div>
              <div><span>销售量</span><span>收藏数</span></div>
              <ul v-if="details_end_left_two_6_bool">
                <li v-for="(p,i) of setMealSecondDiv_ul_1" :key="i">
                  <div>
                    <img :src="p.url" alt="" style="width:42px;height:42px;">
                  </div>
                  <div>
                    <p>2019年新款科技布现</p>
                    <p>{{`¥${p.price.toFixed(2)}`}}</p>
                    <p>已售17780件</p>
                  </div>
                </li>
              </ul>
              <ul v-else>
               <li v-for="(p,i) of setMealSecondDiv_ul_1" :key="i">
                  <div>
                    <img :src="p.url" alt="" style="width:42px;height:42px;">
                  </div>
                  <div>
                    <p>2019年新款科技布现</p>
                    <p>{{`¥${p.price.toFixed(2)}`}}</p>
                    <p>已售17780件</p>
                  </div>
                </li>
              </ul>
              <div>查看更多宝贝</div>
            </div>
          </div>
        </div>
      </div>
      <div class="details_end_middle">
        <div>
          <div>
            <el-tabs type="border-card">
              <el-tab-pane label="商品详情">
                <div class="details-card">
                  <!-- 1 -->
                  <div>
                    <div><p>品牌名称:GKG</p></div>
                    <p>产品参数</p>
                    <ul>
                      <li v-for="(p,i) of details_card_li" :key="i">{{p}}</li>
                    </ul>
                  </div>
                  <!-- 2 -->
                  <div>
                    <img :src=details_card_tianmao alt="">
                  </div>
                  <!-- 3 -->
                  <div>
                    <div>
                      <table></table>
                      <i></i>
                      <div>
                        <span>送货入户</span>
                        <p>1.消费者在购买带“送货入户”或“送货入户并安装”服务的商品时，商家承诺提供送货入户的服务。</p>
                        <p>2.如果商家未履行服务承诺，需向消费者赔付30000个天猫积分。 </p>
                      </div>
                    </div>
                    <div>
                      <table></table>
                      <i></i>
                      <div>
                        <span>三年质保</span>
                        <p>1.消费者在购买带“三年质保”服务的商品时，商家承诺三年内对该商品提供维修、补寄零配件或更换全新商品的服务。</p>
                        <p>2.如果商家未履行承诺，需以发放天猫积分的方式向消费者进行赔付，发放天猫积分数量（个）=商品实际成交金额（元）*15（个/元）（最高不超过100000个积分）。 </p>
                      </div>
                    </div>
                    <router-link to="">查看更多服务详情></router-link>
                  </div>
                  <!-- 4 -->
                  <div>
                    <div>
                      <ul>
                        <li v-for="(p,i) of details_card_div_4" :key="i">
                          <img :src="p.url" style="width:790px;">
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </el-tab-pane>
              <el-tab-pane label="累计评价">
                <div class="details-evaluate">
                  <!-- 1 -->
                  <div>
                    <div>
                      <h4>与描述相符</h4>
                      <strong>4.7</strong>
                      <span></span>
                    </div>
                    <div>
                        <div>
                          <span>大家都写到</span>
                        </div>
                        <div>
                          <span v-for="(item,i) of details_evaluate_secondDiv" :key="i">
                            <a href="javascript:;">{{item}}</a>
                          </span>
                        </div>
                    </div>
                  </div>
                  <!-- 2 -->
                  <div>
                    <span>
                      <template>
                        <el-radio v-model="radio" label="1">全部</el-radio>
                        <el-radio v-model="radio" label="2">追评(1278)</el-radio>
                        <el-radio v-model="radio" label="3">图片(4462)</el-radio>
                      </template>
                    </span>
                    <span></span>
                  </div>
                  <!-- 3 -->
                  <div v-for="i of 10" :key="i" style="width: 790px;height: 167px;display: flex;">
                    <!-- 1 -->
                    <div style="width: 508px;height: 167px;padding: 16px 7px;border-bottom: 1px solid #e3e3e3;">
                      <!-- 1 -->
                      <div style="width: 494px;height: 117px;">
                        <div style="font-size: 12px;color:#333333;">
                          沙发七件套很满意。一直心里很担心颜色方面。担心大件物体还有运输过程是否有磕碰问题。12月23下的单1月5号送达。收到货安装好一切顾虑都是多余的了。真心推荐大家值得购买。这价格这质量实体店没法比。
                        </div>
                        <div style="width: 494px;height: 40px;margin: 10px 0;">
                          <img v-for="(p,i) of setMealSecondDiv_ul_1" :key="i" :src=p.url alt="" style="width:40px;height:40px;float:left;margin-left:5px;">
                        </div>
                      </div>
                      <!-- 2 -->
                      <div style="width: 494px;height: 18px;color: #ccc;font-size: 12px;">01.07</div>
                    </div>
                    <!-- 2 -->
                    <div style="width: 149px;height: 167px;color: #999;padding: 16px 7px;border-bottom: 1px solid #e3e3e3;">
                      <p style="font-size: 12px;color: #999999;margin-bottom: 0;margin-top:11px; ">颜色分类：七件套(送4小凳子)</p>
                      <p style="font-size: 12px;color: #999999;margin-bottom: 0;margin-top:11px; ">几人坐：【加强型乳胶款】(免洗面料+加强型松木框架)选1-15号色</p>
                    </div>
                    <!-- 3 -->
                    <div>
                      <span style="font-size: 12px;color: #404040;line-height: 167px;margin-left: 45px;">****(匿名)</span>
                    </div>
                  </div>
                </div>
              </el-tab-pane>
              <el-tab-pane label="家装服务详情">
                <div class="details-service">
                  <!-- 1 -->
                  <div>
                    <div>
                      <table></table>
                      <i></i>
                      <div>
                        <span>送货入户</span>
                        <em>服务介绍</em>
                        <p>送货入户服务，指消费者在天猫平台上购买家装大件类商品时，商家承诺对于其店铺内含有“送货入户”或“送货入户并安装”的商品，如消费者购买该商品时填写的详细收货地址（以下统称“收货地址”）在商家承诺提供“送货入户”或“送货入户并安装”的区域内，则向消费者提供送货到消费者收货地址（包括但不限于长途干线运输、同城配送、搬楼）的特殊服务</p>
                        <em>消费者保障</em>
                        <p>商家未提供送货入户服务的，需向消费者赔付30000个天猫积分</p>
                      </div>
                    </div>
                    <div>
                      <table></table>
                      <i></i>
                      <div>
                        <span>三年质保</span>
                        <em>服务介绍</em>
                        <p>三年质保服务，是指商家承诺当消费者购买其店铺内含有“三年质保”服务的商品后，若该商品在指定三年内出现质量问题，则商家将根据商品的实际故障情况，在规定时间内向消费者提供维修或补寄零配件或更换全新商品，以确保消费者可再正常使用该商品的附加服务，或向消费者补偿一定质保基金的附加服务。服务费用由商家与消费者协商确定，且须达成一致</p>
                        <em>消费者保障</em>
                        <p>商家应提供但未提供和/或未在规定时间内提供三年质保服务的，需以发放天猫积分的方式向消费者进行赔付，发放天猫积分数量（个）=商品实际成交金额（元）*15（个/元）（最高不超过100000个积分）</p>
                      </div>
                    </div>
                    <router-link to="">查看更多服务详情></router-link>
                  </div>
                  <!-- 2 -->
                  <div>
                    <ul>
                      <li v-for="(p,i) of side_img_arr" :key="i">
                        <router-link to="">
                          <img :src="p.url" style="width:220px;height:220px;">
                          <div>{{`¥${p.price.toFixed(2)}`}}</div>  
                        </router-link>
                      </li>
                    </ul>
                  </div>
                  <!-- 3 -->
                  <div>
                    <dl>
                      <dt>安全提示:</dt>
                      <dd>
                        <p>请勿随意接收任何来源不明的文件，请勿随意点击任何来源不明的链接。涉及资金往来的事项请务必仔细核对资金往来信息。 天猫不会以订单有问题，让您提供任何银行卡、密码、手机验证码！遇到可疑情况可在钱盾“诈骗举报”中进行举报</p>
                      </dd>
                    </dl>
                    <dl>
                      <dt>内容声明:</dt>
                      <dd>
                        <p>天猫为第三方交易平台及互联网信息服务提供者，天猫（含网站、客户端等）所展示的商品/服务的标题、价格、详情等信息内容系由店铺经营者发布，其真实性、准确性和合法性均由店铺经营者负责。天猫提醒用户购买商品/服务前注意谨慎核实。如用户对商品/服务的标题、价格、详情等任何信息有任何疑问的，请在购买前通过阿里旺旺与店铺经营者沟通确认；天猫存在海量店铺，如用户发现店铺内有任何违法/侵权信息，请立即向天猫举报并提供有效线索。</p>
                      </dd>
                    </dl>
                  </div>
                </div>
              </el-tab-pane>
            </el-tabs>
          </div>
        </div>
      </div>
      <div class="details_end_right">
        <div>
          <p>--天天懂你,猜我喜欢--</p>
          <ul>
            <li v-for="(p,i) of side_img_arr" :key="i">
              <img :src="p.url" style="width:140px;height:140px;">
              <div>{{`¥${p.price.toFixed(2)}`}}</div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      radio: '1',
      details_evaluate_secondDiv:["质量不错(608)","服务态度好(575)","快递不错(275)","实惠(186)","性价比高(55)","没有色差(39)","质量一般(55)"],
      details_end_left_two_6_bool:true,
      data: [
        {
          label: '客厅系列',
          children: [{label: '现代沙发'}, {label: '北欧沙发'},{label: '真皮沙发'},{label: '茶几'},{label: '边几'},{ label: '鞋柜'},{label: '电视柜'}, { label: '斗柜'}]
        },
        {
          label: '餐厅系列',
          children: [{label: '餐桌'}, {label: '餐椅'},{label: '餐边柜'},{label: '酒柜'}]
        },
        {
          label: '卧室系列',
          children: [{label: '真皮床'}, {label: '布艺床'},{label: '实木床'},{label: '板式床'},{label: '床垫'},{ label: '衣柜'},{label: '梳妆台'}]
        },
        {
          label: '烤漆系列'
        },
        {
          label: '书房系列',
          children: [{label: '电脑桌'}]
        }
        ],
        defaultProps: {
          children: 'children',
          label: 'label'
        },
      details_card_div_4:[
        {url:require("../assets/details/detail_img/one.jpg")},
        {url:require("../assets/details/detail_img/A1.jpg")},
        {url:require("../assets/details/detail_img/A3.jpg")},
        {url:require("../assets/details/detail_img/A4.jpg")},
        {url:require("../assets/details/detail_img/A5.jpg")},
        {url:require("../assets/details/detail_img/A6.jpg")},
        {url:require("../assets/details/detail_img/A7.jpg")},
        {url:require("../assets/details/detail_img/A8.jpg")},
        {url:require("../assets/details/detail_img/A9.jpg")},
        {url:require("../assets/details/detail_img/B0.jpg")},
        {url:require("../assets/details/detail_img/B1.jpg")},
        {url:require("../assets/details/detail_img/B2.jpg")},
        {url:require("../assets/details/detail_img/B3.jpg")},
        {url:require("../assets/details/detail_img/B5.jpg")},
        {url:require("../assets/details/detail_img/B6.jpg")},
        {url:require("../assets/details/detail_img/B7.jpg")},
        {url:require("../assets/details/detail_img/B8.jpg")},
        {url:require("../assets/details/detail_img/B9.jpg")},
        {url:require("../assets/details/detail_img/C0.jpg")},
        {url:require("../assets/details/detail_img/C2.jpg")},
        {url:require("../assets/details/detail_img/C3.jpg")},
        {url:require("../assets/details/detail_img/C4.jpg")},
        {url:require("../assets/details/detail_img/C5.jpg")},
        {url:require("../assets/details/detail_img/C6.jpg")},
        {url:require("../assets/details/detail_img/C7.jpg")},
        {url:require("../assets/details/detail_img/C8.jpg")},
        {url:require("../assets/details/detail_img/C9.jpg")},
        {url:require("../assets/details/detail_img/D0.jpg")},
        {url:require("../assets/details/detail_img/D1.jpg")},
        {url:require("../assets/details/detail_img/D2.jpg")},
        {url:require("../assets/details/detail_img/D3.jpg")},
        {url:require("../assets/details/detail_img/D4.jpg")},
        {url:require("../assets/details/detail_img/D5.jpg")},
        {url:require("../assets/details/detail_img/D6.jpg")},
        {url:require("../assets/details/detail_img/D7.jpg")},
        {url:require("../assets/details/detail_img/D8.jpg")},
        {url:require("../assets/details/detail_img/D9.jpg")},
        {url:require("../assets/details/detail_img/E0.jpg")},
        {url:require("../assets/details/detail_img/E1.jpg")},
        {url:require("../assets/details/detail_img/E2.jpg")},
        {url:require("../assets/details/detail_img/E3.jpg")},
        {url:require("../assets/details/detail_img/E4.jpg")},
        {url:require("../assets/details/detail_img/E5.jpg")},
        {url:require("../assets/details/detail_img/E6.jpg")},
        {url:require("../assets/details/detail_img/E8.jpg")},
        {url:require("../assets/details/detail_img/E9.jpg")},
        {url:require("../assets/details/detail_img/F0.jpg")},
        {url:require("../assets/details/detail_img/F1.jpg")},
        {url:require("../assets/details/detail_img/F2.jpg")},
        {url:require("../assets/details/detail_img/F3.jpg")},
        {url:require("../assets/details/detail_img/F4.jpg")},
        {url:require("../assets/details/detail_img/F5.jpg")},
        {url:require("../assets/details/detail_img/F6.jpg")},
        {url:require("../assets/details/detail_img/F8.jpg")},
        {url:require("../assets/details/detail_img/F9.jpg")},
        {url:require("../assets/details/detail_img/G1.jpg")},
        {url:require("../assets/details/detail_img/G3.jpg")},
        {url:require("../assets/details/detail_img/G5.jpg")},
        {url:require("../assets/details/detail_img/G7.jpg")},
        {url:require("../assets/details/detail_img/G9.jpg")},
        {url:require("../assets/details/detail_img/jiageshuoming.png")}
      ],
      details_card_tianmao:require("../assets/details/detail_img/tianmao.png"),
      details_card_li:[
        "品牌: GKG","型号: 1011#","材质: 木","木质材质: 松木","面料: 麻","图案: 艺术","风格: 简约现代","几人坐: 【海绵款】(普通面料)选1-15号色","颜色分类: 二件套(送4小凳子) 三件套(送...","毛重: 150","填充物: 海绵","结构工艺: 木质工艺","木质结构工艺: 拼板","是否可定制: 是","沙发组合形式: U形","是否可拆洗: 是","附加功能: 移动","适用对象: 成人","是否带储物空间: 是","面料饰面工艺: 植绒","可送货/安装: 其他 南昌市 哈尔滨市 大连","产地: 河南省","地市: 安阳市","区县: 滑县","是否组装: 整装","包装体积: 3","是否可预售: 是","出租车是否可运输: 否","填充物硬度: 软","设计元素: 大师设计","款式定位: 经济型","安装说明详情: 提供安装说明书"
      ],
      setMealSecondDiv_ul_3:[
        { url: require("../assets/details/small_img/3.jpg"), price: 3577 },
        { url: require("../assets/details/small_img/3.jpg"), price: 3125 },
        { url: require("../assets/details/small_img/3.jpg"), price: 12300 },
        { url: require("../assets/details/small_img/3.jpg"), price: 8599 }
      ],
      setMealSecondDiv_ul_2:[
        { url: require("../assets/details/small_img/2.jpg"), price: 3577 },
        { url: require("../assets/details/small_img/2.jpg"), price: 3125 },
        { url: require("../assets/details/small_img/2.jpg"), price: 12300 },
        { url: require("../assets/details/small_img/2.jpg"), price: 8599 }
      ],
      setMealSecondDiv_ul_1:[
        { url: require("../assets/details/small_img/1.jpg"), price: 3577 },
        { url: require("../assets/details/small_img/1.jpg"), price: 3125 },
        { url: require("../assets/details/small_img/1.jpg"), price: 12300 },
        { url: require("../assets/details/small_img/1.jpg"), price: 8599 }
      ],
      activeName: 'first',
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
    handleNodeClick(data) {
        // console.log(data);
    },
    handleClick(tab, event) {
        // console.log(tab, event);
    },
    imgClickHandler(index) {
      this.small_img_i = index;
    },
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
  background-size: 800px 800px;
  background-repeat: no-repeat;
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

/* 放大镜下面 小轮播图  左右 按钮 */
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
  height: 715px;
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
#detailsAll #setMeal .setMealFirstDiv{
  width: 100%;
  height: 230px;
  margin-top: -13px;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv{
  width: 100%;
  height: 180px;
  margin-top: 5px;
  display: flex;
  justify-content: space-between;
  animation: bounceInRight 1s;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv ul{
  width: 700px;
  height: 180px;
  display: flex;
  justify-content:space-around;
  margin-top: 9px;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv ul li:first-child::after{
  content: '+';
  font-weight: 600;
  display:inline-block;
  position: relative;
  left: 145px;
  top: -110px;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv ul li span{
   width: 130px;
   font-size: 12px;
   color: #666666;
   padding-left: 27px;
   display: flex;
   flex-wrap: wrap;
   margin:-22px 0 0 0px;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv div{
  width: 245px;
  height: 67px;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv div p{
  margin-top: 3px;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv div p{
  color: #ff0036;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv div p span:first-of-type{
  font-size: 12px;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv div p span:last-of-type{
  font-size: 18px;
  font-weight: 700;
  margin-left: 5px;
}
#detailsAll #setMeal .setMealFirstDiv .setMealSecondDiv div a{
    display: block;
    border: 1px solid #FF0036;
    cursor: pointer;
    outline: 0;
    border-radius: 2px;
    height: 25px;
    line-height: 24px;
    font-size: 12px;
    font-weight: 700;
    width: 112px;
    text-align: center;
    margin: 10px 0;
    color: #ff0036;
}
/* 详情最后 details_end */
#detailsAll #details_end{
  width: 1190px;
  margin:20px auto;
  display: flex;
  justify-content: space-between;
}
/* 详情最后 details_end  左侧div*/
#detailsAll #details_end .details_end_left{
  width: 190px;
}
#detailsAll #details_end .details_end_left .details_end_left_one{
  width: 190px;
  height: 191px;
  margin-bottom: 10px;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div{
  width: 190px;
  height: 191px;
  border: 1px solid #e5e5e5;
  padding: 0 0 15px;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:first-child{
  width: 190px;
  height: 48px;
  background-color: #fafafa;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:first-child a{
    color: #333;
    font-size: 12px;
    line-height: 48px;
    font-weight: 700;
    margin-left: 30px;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:first-child a span{
  display: inline-block;
  width: 16px;
  height: 19px;
  background-image: url('./../assets/details/color/1.gif');
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(2){
  width: 100px;
  height: 18px;
  margin: 10px auto 5px;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(2) p{
  text-align:center;
  font-size: 12px;
  color: #999;
  float: left;
  font-weight: 700;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(3){
    overflow: hidden;
    width: 130px;
    height: 51px;
    margin: 0 auto;
    cursor: pointer;
    position: relative;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(3) p{
  display: flex;
  justify-content: space-around;
  margin-bottom: 3px;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(3) p span{
  font-size: 12px;
  color: #999999;
  
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(3) p:nth-of-type(2) span{
  color:darkgreen;
  font-weight: 700;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(4){
  margin: 15px auto 0;
  width: 150px;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(4) a{
  font-size:12px;
  display: inline-block;
  width: 72px;
  text-align: center;
  line-height: 26px;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(4) a:first-of-type{
  background-color: #333333;
  color: #fff;
}
#detailsAll #details_end .details_end_left .details_end_left_one>div>div:nth-child(4) a:nth-of-type(2){
  background-color: #f5f5f5;
  color: #333;
  margin-left: 6px;
}
/* details_end_left_two */

#detailsAll #details_end .details_end_left .details_end_left_two{
  width: 190px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:first-child{
  width: 190px;
  height: 199px;
  display: flex;
  justify-content: space-around;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:first-child div{
  margin-top: 165px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:first-child a{
  font-size: 12px;
  color: #666666;
  margin:0 5px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(2){
  width:190px;
  height: 162px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(2)>div{
  width: 190px;
  height: 162px;
  margin-bottom: 10px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(2)>div>div{
  width: 190px;
  height: 152px;
  border: 1px solid #EEE;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(2)>div>div>ul>li{
  text-align: center;
  margin: 6px 0;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(2)>div>div>ul>li span,
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(2)>div>div>ul>li a{
  font-size: 12px;
  color: #666666;
  margin-right: 5px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(2)>div>div>ul>li:first-child input{
    width: 112px;
    height: 28px;
    border: 1px solid #a7a6aa;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(2)>div>div>ul>li:nth-child(2) input{
  width: 37px;
  height: 28px;
  margin-right: 4px;
  border: 1px solid #a7a6aa;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(2)>div>div>ul>li:nth-child(3) button{
    border-radius: 5px;
    padding: 0 10px;
    background-color: #333;
    color: #fff;
}
/* 3 */
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(3){
  width: 190px;
  height: 282px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(3)>div{
  width: 190px;
  height: 282px;
  margin-bottom: 10px;
  color: #665454;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(3)>div>div{
    width: 188px;
    background: url(//gdp.alicdn.com/imgextra/i4/39767794/TB2Emx7bX5N.eBjSZFKXXX_QVXa-39767794.jpg) top center no-repeat #FFF;
    padding-top: 70px;
    padding-bottom: 10px;
    border: 1px solid #DDD
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(3)>div>div>div{
  width: 188px;
  height: 199px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(3)>div>div>div>ul{
  margin-bottom: 0;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(3)>div>div>div>ul>li{
  font-size: 12px;
  color: #665454;
}
/* 4 */
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(4){
  width: 190px;
  height: 566px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(4)>div>a{
  background: url(//gdp.alicdn.com/imgextra/i2/3417036972/O1CN01FGwcrn21NDvjv6lc6_!!3417036972.jpg) 50% 50% no-repeat;
  display: block;
  width: 190px;
  height: 278px;
  top: 0px;
  left: 0px;
  border: none;
  margin-top:10px; 
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(4)>div>a:nth-of-type(2){
  background: url(//gdp.alicdn.com/imgextra/i4/3417036972/O1CN01qGsbPq21NDvohQbDi_!!3417036972.jpg) 50% 50% no-repeat;
}
/* details-left  第五个div */
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(5){
  width:190px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(5)>div:first-child{
    height: 33px;
    line-height: 33px;
    padding-top: 0px;
    border-radius: 0;
    margin-bottom: 0px;
    padding-bottom: 0px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(5)>div:first-child,#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:first-child{
  border: 1px solid #eeeeee;
  background-color:#f9f9f9;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(5)>div:first-child span,#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:first-child span{
    margin-left: 8px;
    color: #666;
    font-size: 12px;
    font-weight: bold;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(5)>div:nth-child(2){
  border: 1px solid #eeeeee;
}
/* details-left  第六个div */
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6){
  width: 190px;
  height: 511px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2){
  border: 1px solid #eeeeee;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2)>div:first-of-type{
    width: 190px;
    height: 28px;
    border-bottom: 1px solid #fff;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2)>div:first-of-type>span{
    display: inline-block;
    width: 94px;
    height: 28px;
    line-height: 28px;
    background-color: #E1E1E1;
    font-size: 12px;
    color: #666666;
    text-align: center;
    cursor: pointer;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2)>div:first-of-type>span:hover{
  background-color: #ffffff;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2)>ul{
  width: 188px;
  height: 320px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2)>ul>li{
    height: 81px;
    padding: 15px 0 4px;
    border-bottom: 1px solid #ede5e3;
    margin: 5px 10px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2)>ul>li>div:first-child{
    float: left;
    font-size: 0;
    margin-top: 5px;
    margin-left: 5px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2)>ul>li>div:nth-child(2){
  margin-left: 55px;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2)>ul>li>div:nth-child(2)>p{
  font-size: 12px;
  color: #666666;
  margin: 0;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(6)>div:nth-child(2)>div:nth-of-type(2){
    height: 42px;
    width: 188px;
    line-height: 42px;
    text-align: center;
    cursor: pointer;
    font-size: 12px;
    color: #666666;
}

/* 详情最后 details_end  右侧div*/
#detailsAll #details_end .details_end_right{
  width: 200px;
  height: 1980px;
}
#detailsAll #details_end .details_end_right>div{
  width:200px;
  height: 1655px;
}
#detailsAll #details_end .details_end_right>div>p{
  widows: 120px;
  font-size: 12px;
  color: #999999;
  text-align: center;
  margin: 20px 40px;
}
#detailsAll #details_end .details_end_right>div>ul{
  padding: 0 30px;
  height: 100%;
}
#detailsAll #details_end .details_end_right>div>ul>li{
  width: 140px;
  height: 160px;
}
#detailsAll #details_end .details_end_right>div>ul>li>div{
    width: 140px;
    text-align: center;
    line-height: 20px;
    background: rgba(255, 255, 255, 0.8);
    position: relative;
    left: 0;
    bottom: 20px;
}
/* 详情最后 details_end  中间div*/
#detailsAll #details_end .details_end_middle{
  width: 790px;
}
/* details_end_middle   中间div  */
#detailsAll #details_end .details_end_middle>div{
  width: 790px;
}
#detailsAll #details_end .details_end_middle>div .details-card{
  width: 790px;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:first-child{
  width: 788px;
  height: 419px;
  padding: 8px 20px 10px;
  border-bottom:1px solid #e6e6e6; 
}
#detailsAll #details_end .details_end_middle>div .details-card>div:first-child>div:first-child{
    height: 40px;
    line-height: 40px;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:first-child>div:first-child>p{
  margin-bottom: 0;
  color: #333333;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:first-child>p{
  color: #999999;
  padding: 5px;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:first-child>ul{
  width: 748px;
  height: 308px;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:first-child>ul>li{
    display: inline-block;
    width: 220px;
    height: 18px;
    overflow: hidden;
    margin: 10px 15px 0 0;
    line-height: 18px;
    vertical-align: top;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #666;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:first-child>div:first-child>p,#detailsAll #details_end .details_end_middle>div .details-card>div:first-child>p,#detailsAll #details_end .details_end_middle>div .details-card>div:first-child>ul>li{
  font-size: 12px;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(2){
  margin: 8px 0;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3){
  width: 790px;
  height: 276px;
  background-color: #F6F6F6;
  padding: 0 0 20px;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:first-child{
    width: 770px;
    height: 90px;
    padding-left: 20px;
    margin-top: 10px;
    display: flex;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:first-child div,#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:nth-child(2) div{
    width: 658px;
    height: 90px;
    border-bottom: 1px solid #e5e5e5;
    padding-bottom: 15px;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:nth-child(2) div{
    height: 111px;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:first-child i,#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:nth-child(2) i{
    display: inline-block;
    width: 42px;
    height: 42px;
    background-image:url("../assets/details/color/ruhu.png");
    margin: 20px 16px 0 0;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:nth-child(2) i{
  background-image:url("../assets/details/color/zhibao.png");
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:nth-child(2){
    width: 770px;
    height: 110px;
    padding-left: 20px;
    margin-top: 10px;
    display:flex;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>a{
    display: block;
    width: 135px;
    height: 35px;
    line-height: 35px;
    overflow: hidden;
    margin: 20px auto 0;
    text-align: center;
    background-color: #c40000;
    border-radius: 5px;
    font-size: 12px;
    color: #FFF
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:first-child div span,#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:nth-child(2) div span{
    display: block;
    line-height: 32px;
    font-size: 14px;
    font-weight: bolder;
    color: #000;
}
#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:first-child div p,#detailsAll #details_end .details_end_middle>div .details-card>div:nth-child(3)>div:nth-child(2) div p{
    display: block;
    line-height: 21px;
    font-family: "microsoft yahei";
    font-size: 12px;
    color: #666;
}
/* .details-service  1 */
#detailsAll #details_end .details_end_middle>div .details-service{
  width: 790px;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child{
  width: 790px;
  height: 524px;
  background-color: #F6F6F6;
  padding: 1px 0 20px;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:first-child{
    width: 790px;
    height: 213px;
    padding-left: 15px;
    margin-top: 10px;
    display: flex;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:first-child div,#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:nth-child(2) div{
    width: 658px;
    height: 213px;
    border-bottom: 1px solid #e5e5e5;
    padding-bottom: 15px;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:nth-child(2) div{
    height: 216px;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:first-child i,#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:nth-child(2) i{
    display: inline-block;
    width: 42px;
    height: 42px;
    background-image:url("../assets/details/color/ruhu.png");
    margin: 20px 16px 0 0;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:nth-child(2) i{
  background-image:url("../assets/details/color/zhibao.png");
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:nth-child(2){
    width: 770px;
    height: 110px;
    padding-left: 20px;
    margin-top: 10px;
    display:flex;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>a{
    display: block;
    width: 135px;
    height: 35px;
    line-height: 35px;
    overflow: hidden;
    margin: 135px auto 0;
    text-align: center;
    background-color: #c40000;
    border-radius: 5px;
    font-size: 12px;
    color: #FFF
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:first-child div span,#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:nth-child(2) div span{
    display: block;
    line-height: 32px;
    font-size: 14px;
    font-weight: bolder;
    color: #000;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:first-child div p,#detailsAll #details_end .details_end_middle>div .details-service>div:first-child>div:nth-child(2) div p{
    display: block;
    line-height: 21px;
    font-family: "microsoft yahei";
    font-size: 12px;
    color: #666;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:first-child em{
  font-size: 12px;
  color: #c40000;
  font-weight: 700;
}
/* .details-service  2 */
#detailsAll #details_end .details_end_middle>div .details-service>div:nth-child(2){
  width:790px;
  height: 1000px;
  background-color: #fafafa;
  padding-top: 15px;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:nth-child(2)>ul{
  width: 750px;
  height: 960px;
  margin: auto;
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:nth-child(2)>ul>li{
  height: 220px;
  border: 1px solid rgba(237,237,237);
}
#detailsAll #details_end .details_end_middle>div .details-service>div:nth-child(2)>ul>li>a{
  color: #212529;
  text-decoration: none;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:nth-child(2)>ul>li>a>div{
    width: 220px;
    text-align: center;
    line-height: 20px;
    background: rgba(255, 255, 255, 0.8);
    position: relative;
    left: 0;
    bottom: 20px;
}
/* .details-service  3 */
#detailsAll #details_end .details_end_middle>div .details-service>div:nth-child(3){
    width: 790px;
    height: 211px;
    margin-top: 20px;
    padding: 10px;
    background-color: #ffffe5;
    border: 1px solid #ffcc7f
}
#detailsAll #details_end .details_end_middle>div .details-service>div:nth-child(3)>dl{
    padding-left: 68px;
    line-height: 2;
    font-size: 12px;
    color: #404040;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:nth-child(3)>dl>dt{
    display: inline;
    float: left;
    width: 68px;
    margin-left: -68px;
    font-weight: 700;
}
#detailsAll #details_end .details_end_middle>div .details-service>div:nth-child(3)>dl:first-child{
    margin-bottom: 10px;
    padding-bottom: 10px;
    border-bottom: 1px solid #ffe8ca;
}
/* 累计评价模块 */
#detailsAll #details_end .details_end_middle>div .details-evaluate{
  width: 790px;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child{
    width: 790px;
    height: 92px;
    border: 1px solid #c8c8c8;
    padding: 10px 0;
    display: flex;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child>div:first-child{
    width: 115px;
    height: 63px;
    padding: 0 20px;
    border-right: 1px dotted #ddd;
    text-align: center;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child>div:first-child>h4{
  font-size: 12px;
  color:#404040;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child>div:first-child>strong{
    color: #f60;
    font-family: arial;
    font-size: 32px;
    line-height: 32px;
    margin: 0 2px;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child>div:first-child>span{
    background: url(../assets/details/color/pingfen.png) 0 -15px no-repeat;
    display: block;
    width: 60px;
    height: 12px;
    overflow: hidden;
    margin-left: 7px;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child>div:nth-child(2){
  width: 630px;
  height: 70px;
  display: flex;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child>div:nth-child(2)>div:first-child{
    color: #ccc;
    width: 16px;
    height: 61px;
    margin-top: 4px;
    font-size: 11px;
    line-height: 12px;
    padding: 0 40px 0 25px;
    background: url(../assets/details/color/dakuohao.png) 45px 4px no-repeat;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child>div:nth-child(2)>div:nth-child(2){
  width: 555px;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child>div:nth-child(2)>div:nth-child(2)>span{
    float: left;
    height: 22px;
    margin: 7px 6px 6px;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:first-child>div:nth-child(2)>div:nth-child(2)>span>a{
    font-size: 12px;
    position: relative;
    float: left;
    border-radius: 2px;
    line-height: 18px;
    padding: 1px 10px;
    background: #fff;
    box-shadow: 2px 2px 1px #f2f2f2;
    color: #ff0036;
    border:1px solid #ffd7dd;
    white-space: nowrap;
    text-decoration: none;
}
/* 2 */
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(2){
    background: #EFEFEF;
    border: 1px solid #c8c8c8;
    height: 36px;
    line-height: 24px;
    padding: 5px 10px;
}
/* 3 */
/* #detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(3){
  width: 790px;
  height: 167px;
  display: flex;
} */
/* #detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(3)>div:first-child{
  width: 508px;
  height: 167px;
  padding: 16px 7px;
  border-bottom: 1px solid #e3e3e3;
} */
/* #detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(3)>div:first-child>div:first-child{
  width: 494px;
  height: 117px;
} */
/* #detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(3)>div:first-child>div:nth-child(2){
  width: 494px;
  height: 18px;
  color: #ccc;
  font-size: 12px;
} */
/* #detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(3)>div:first-child>div:first-child>div:first-child{
  font-size: 12px;
  color:#333333;
} */
/* #detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(3)>div:first-child>div:first-child>div:nth-child(2){
  width: 494px;
  height: 40px;
  margin: 10px 0;
} */
/* #detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(3)>div:nth-child(2){
  width: 149px;
  height: 167px;
  color: #999;
  padding: 16px 7px;
  border-bottom: 1px solid #e3e3e3;
} */
/* #detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(3)>div:nth-child(2)>p{
  font-size: 12px;
  color: #999999;
  margin-bottom: 0;
  margin-top:11px; 
} */
/* #detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(3)>div:nth-child(3)>span{
  font-size: 12px;
  color: #404040;
  line-height: 167px;
  margin-left: 45px;
} */
</style>

/* 组件样式 */

<style>
/* 套餐  setMeal */
#detailsAll #setMeal .is-active{
  color: #ff0036;
}
#detailsAll #setMeal .el-tabs__active-bar{
    position: absolute;
    top: 0;
    left: 0;
    height: 2px;
    background-color: #FF0036;
    z-index: 1;
}
#detailsAll #setMeal .el-tabs__item{
  font-size: 14px;
  font-weight: 700;
}
#detailsAll #setMeal .el-tabs__item:hover{
  color: #ff0036;
}
#detailsAll #setMeal .el-tabs__nav-wrap::after{
 background-color:transparent;
}
#detailsAll #setMeal .el-tabs__nav{
  margin-left: 15px;
}

/* #detailsAll #details_end .details_end_middle */
#detailsAll #details_end .details_end_middle .el-tabs--border-card>.el-tabs__header{
  background-color: #fff;
  line-height: 48px;
}
#detailsAll #details_end .details_end_middle .el-tabs--border-card>.el-tabs__header .el-tabs__item{
  color: #333333;
  font-size: 12px;
}
#detailsAll #details_end .details_end_middle .el-tabs--border-card>.el-tabs__header .el-tabs__item.is-active{
  font-size:14px; 
  color: #ff0036;
  font-weight: 700;
}
#detailsAll #details_end .details_end_middle .el-tabs--border-card>.el-tabs__header .el-tabs__item:not(.is-disabled):hover{
  color: #ff0036;
}
#detailsAll #details_end .details_end_middle .el-tabs--border-card>.el-tabs__content{
  padding: 0;
}
/* #detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(5)  第五个div */
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(5)>div:nth-child(2) .el-tree-node__label{
  font-size: 12px;
  color: #7e7e7e;
  line-height: 32px;
  font-weight: 600;
}
#detailsAll #details_end .details_end_left .details_end_left_two>div:nth-child(5)>div:nth-child(2) .el-tree-node.is-expanded>.el-tree-node__children{
  border-bottom: 1px solid #eeeeee;
}
/* 累计评价 */
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(2) .el-radio__label{
  font-size: 12px;
  color:#404040;
}
#detailsAll #details_end .details_end_middle>div .details-evaluate>div:nth-child(2)>span:first-of-type .el-radio__input.is-checked .el-radio__inner{
    border-color: #ccc;
    background: #ccc;
}
</style>