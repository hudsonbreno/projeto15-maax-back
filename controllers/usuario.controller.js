import { db } from "../database/database.connection.js"
import bcrypt from "bcrypt"
import {v4 as uuid} from "uuid"

export async function cadastrar(req, res){
    const { nome, email, senha, conferirSenha, endereco, telefone } = req.body

    try{
        const conflito = await db.collection("usuarios").findOne({email: email})
        if (conflito) return res.status(409).send("E-mail já cadastrado")
    
        if(senha !=conferirSenha) return res.status(409).send("E-mail já cadastrado")
    
        const hash = bcrypt.hashSync(password, 10)

        const cadastrar = await db.collection("usuarios").insertOne({nome, endereco, telefone, email, senha:hash})
        if(!cadastrar) return res.status(402).send("Erro 402")
    
    }
    catch(err){
        res.send(err.message).status(500)
    }
}

export async function login(req,res){
    try{
        const {email, senha } =req.body
        
        const conferir = await db.collection("usuarios").findOne({email})
        if(conferir == null) return res.status(422).send("Email não cadastrado")

        const senhaCorreta = bcrypt.compareSync(senha, conferir.senha)
        if(senhaCorreta) return res.status(422).send("Senha Incorreta")

        const token = uuid();
        await db.collection("sessoes").insertOne({token, userId: conferir._id})
        res.status(200).send({
            userId:conferir._id,
            token:token,
            nome:conferir.nome
        })
    }
    catch(err){
        res.send(err.message).status(500)
    }
}