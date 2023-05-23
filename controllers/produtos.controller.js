import { db } from "../database/database.connection.js"

export async  function catalogo(req,res){
    try{
        const produtos = await db.query(`SELECT * FROM produtos`)
        
        res.send(produtos).status(200)
    }
    catch(err){
        res.send(err.message).status(500)
    }
}