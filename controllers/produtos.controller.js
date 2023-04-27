
export async  function catalogo(req,res){
    try{
        res.send("aqui").status(200)
    }
    catch(err){
        res.send(err.message).status(500)
    }
}