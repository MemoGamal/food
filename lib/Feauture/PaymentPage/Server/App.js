var paypal=require("paypal-rest-sdk");

var express=require("express");
const req = require("express/lib/request");
const res = require("express/lib/response");

var app=express();

app.listen(8000,(req,res)=>{
    console.log("Server Started");
});