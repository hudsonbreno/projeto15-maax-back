import { db } from "../database/database.connection.js"

export async  function estoque(req,res){
    try{
        const produtos = await db.query(`SELECT * FROM produto LIMIT 100`)
        
        res.send(produtos.rows).status(200)
    }
    catch(err){
        res.send(err.message).status(500)
    }
}

export async function venda(req, res){
    try{
        const produtos = await db.query(`SELECT * FROM produto`)
    }
    catch(err){
        res.send(err.message).status(500)
    }
}