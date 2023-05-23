import { db } from "../database/database.connection.js";;
import bcrypt from "bcrypt";
import { v4 as uuid } from "uuid";

export async function cadastrar(req, res){
    try{
        const { name, email, password, isPassword } = req.body;

        const conflict = await db.query(`SELECT * FROM users WHERE email=$1`,[email]);
        if(!conflict.rowCount == 0) return res.send("E-mail already registered")
        
        if( password != isPassword ){
            return res.status(422).send("password != isPassword")
        }

        const hash = bcrypt.hashSync(password, 10)

        const singUp = await db.query(`
        INSERT INTO users(name, email, password) 
            VALUES ($1,$2,$3)`,
            [name, email, hash]
        )
        if(!singUp) return res.status(402).send("Error SignUp")

        res.sendStatus(201)
    }
    catch(err){
        res.status(500).send(err.message)
    }
}

export async function login(req, res){
    try{
        const { email, password} = req. body

        const check = await db.query(`
             SELECT * FROM users WHERE email=$1;`,
             [ email ])

        if(check.rowCount == 0) return res.status(422).send("Email não cadastrado")
       
        const SenhaCorreta = bcrypt.compareSync(password, check.rows[0].password)
        if(!SenhaCorreta) return res.status(422).send("Senha incorreta")

        const token = uuid();

        await db.query(`INSERT INTO session (token, "userId") VALUES ($1, $2)`,[token, check.rows[0].id])
        res.status(200).send({
            userId: check.rows[0].id,
            token: token,
            name: check.rows[0].name
         });
    }
    catch(err){
        res.status(500).send(err.message)
    }
}