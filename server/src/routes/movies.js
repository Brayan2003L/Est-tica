const { Router } = require('express');
const router = Router();

router.get('/movies', (req, res) => {
res.json({ "message": "Películas" });
});
router.post('/', (req, res) => {
const { title, director, year, rating } = req.body;
res.json({ "message": "Película guardada" });
});
router.delete('/:id', (req, res) => {
    const { id } = req.params; //Obtenemos el id de la película
    //Acá puede ir una validación
    //If(.. etc){
    res.json({ "message": "Película eliminada" });
    // else{
    // res.status(500).json({error: “Se presento un error...”})
    
    });
    router.put('/:id', (req, res) => {
    const { id } = req.params; //Obtenemos el id de la película
    const { title, director, year, rating } = req.body;
    res.json({ "message": "Película actualizada" });
    });
module.exports = router;