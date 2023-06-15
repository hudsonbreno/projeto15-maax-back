import pg from "pg"
import dotenv from "dotenv"

dotenv.config() ;

const { Pool } = pg;

console.log(process.env.DATABASE_URL)
const configDatabase = {
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false // Ajuste de acordo com a sua necessidade de segurança
    }
}

export const db = new Pool(configDatabase);