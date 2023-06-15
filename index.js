const express = require('express');
const app=express();

app.use(express.json());
app.use('/api/user',require("./routes/user"));


 app.listen(3002,()=>{
    console.log("Server running at 3002");
 })