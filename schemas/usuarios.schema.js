import joi from "joi"

export const usuarioSchema = joi.object({
    nome: joi.string().require(),
    email:joi.string().required(),
    endereco:joi.string().required(),
    password:joi.string().min(3).required(),
    newPassword:joi.string().min(3).required()
})

export const loginSchema = joi.object({
    email: joi.string().email().required(),
    password: joi.string().min().required()
})