import { Router } from "express";
import { login,cadastrar } from "../controllers/usuario.controller.js"

const usuariosRouter = Router()

usuariosRouter.post("/login", login)
usuariosRouter.post("/cadastro", cadastrar)

export default usuariosRouter