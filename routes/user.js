const router=require('express').Router();
const { PrismaClient} =require("@prisma/client");    

const {Users}=new PrismaClient();

router.get('/',async (req,res)=>{
    const user =await Users.findMany({
        select:{
            User_Name:true,
            Contact:true
        }
    });
    res.json(user);
})

router.post('/', async (req,res)=>{
    const {User_Name,Password,Contact}=req.body;

    const userExists= await Users.findUnique({
        where:{
            Contact
        },
        select:{
            User_Name:true
        }
    });
    if(userExists){
        return res.status(400).json({
            "message":"User Already Exist"
        })
    }
    const newUser=await Users.create({
        data:{
            User_Name:User_Name,
            Password:Password,
            Contact:Contact
        }
    });
    res.status(200).json({
        "message":"User Added"
    })
})

router.delete('/',async (req,res)=>{
    const {Contact}=req.body;

    
    const userExist= await Users.findUnique({
        where:{
            Contact:Contact
        },
        select:{
            User_Name:true
        }
    })
    if(userExist){
        const removeUser=await Users.delete({
            where:{
                Contact:Contact
            },
        })
        res.status(200).json({
            "message":"User Removed"
        })
    }
    else{
        res.status(200).json({
            "message":"User Not Found"
        })
    }
})

router.put('/',async (req,res) =>{
    const {user_name,contact}=req.body;

    const checkUserPresent=await Users.findUnique({
        where:{
            Contact:contact
        },
        select:{
            User_Name:true
        }
    });
    if(checkUserPresent){
        const updateUser=await Users.update({
            where:{
                Contact:contact
            },
            data:{
                User_Name:user_name
            }
        })
        res.status(200).json({
            "message":"Name updated"
        })
    }
    res.status(200).json({
        "message":"User Not Found"
    })

})


module.exports=router;