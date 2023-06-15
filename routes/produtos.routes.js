import {Router} from "express"
import { catalogo, selecionarProduto} from "../controllers/produtos.controller.js"


const produtosRouter = Router()

produtosRouter.get("/", catalogo)
produtosRouter.get("/:produto-id", selecionarProduto)


export default produtosRouter