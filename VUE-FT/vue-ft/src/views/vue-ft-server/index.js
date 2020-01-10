const express=require('express');
const pool=require('./pool');

let port=5050;
let app=express();
app.listen(port,()=>{
    console.log('Server Listing',port);
})
app.get('/user',(req,res)=>{
   console.log(req.params.uname)
    pool.query('select * from ft_user',(err,result)=>{
        if(err) throw err;
        res.set('Access-Control-Allow-Origin','*');
        res.json(result);
        console.log(result)
    })
})