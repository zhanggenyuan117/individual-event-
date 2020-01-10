import Vue from 'vue'
import VueRouter from 'vue-router'
import index from '../views/Index.vue'
import login from '../views/Login.vue'
import reg from '../views/reg.vue'
import Details from '../views/Details.vue'

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'index',
    component: index
  },
  { //这里是懒加载，暂时不要问，明天讲
    path: '/details',
    props:true,
    name: 'details',
    component: Details
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    // component: () => import(/* webpackChunkName: "details"*/  '../views/Details.vue')
  },
  {
    path:'/login',
    name:'login',
    component:login
  },
  {
    path:'/reg',
    name:'reg',
    component:reg
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
