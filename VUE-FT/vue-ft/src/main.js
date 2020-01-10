import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MyHeader from './components/myHeader'
import myFooter from './components/myFooter.vue'
import axios from "axios"
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
Vue.use(ElementUI)
axios.defaults.baseURL="http://127.0.0.1:4000";
axios.defaults.withCredentials=true;
Vue.prototype.axios=axios;
Vue.directive("focus",{
  inserted:function(elem){
    elem.focus();
  }
})

//将MyHeader组件对象做成了全局组件
Vue.component("my-header",MyHeader);
Vue.component("my-footer",myFooter);

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
