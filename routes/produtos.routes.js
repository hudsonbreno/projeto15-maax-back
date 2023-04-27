import {Router} from "express"
import { catalogo } from "../controllers/produtos.controller.js"

const produtosRouter = Router()

produtosRouter.post("/produto", catalogo)

export default produtosRouter