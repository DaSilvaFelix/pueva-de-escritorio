const { obtenerTareas, crearTarea } = require('../controllers/tareas.controllers');
const router = require('express').Router();
router.get('/tareas', obtenerTareas);
router.post('/tareas', crearTarea);
module.exports = router;