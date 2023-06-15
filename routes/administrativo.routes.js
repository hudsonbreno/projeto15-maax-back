import { Router } from "express";
import { estoque, venda } from "../controllers/administrativo.controller.js"

const adminstrativoRouter = Router()

adminstrativoRouter.get("/estoque", estoque)
adminstrativoRouter.post("/venda", venda)

export default adminstrativoRouter