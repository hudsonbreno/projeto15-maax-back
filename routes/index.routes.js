import { Router } from "express"
import usuariosRouter from "./usuarios.routes.js"
import produtosRouter from "./produtos.routes.js"
import administrativoRouter from "./administrativo.routes.js"

const router = Router()
router.use(usuariosRouter)
router.use(produtosRouter)
router.use(administrativoRouter)

export default router
