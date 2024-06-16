const {conetion} = require("../db/db");
const validarJWT = require("../helpers/validarJWT");
const ctrl = {};
ctrl.obtenerTareas = async (req, res) => {
    const connection = await conetion();
    const [results] = await connection.query('SELECT * FROM `tareas`;');
    return res.json(results);
}
ctrl.crearTarea = async (req, res) =>{
    const { nombre, tema } = req.body;
    const token = req.headers.token;
    if(!token) {
        return res.status(401).json({
            msg: 'No estas autorizado para realizar esta acción'
        });
    } else {
        const usuario = await validarJWT(token);
        const connection = await conetion();
        await connection.query(`INSERT INTO tareas(nombre, tema, autor) VALUES (?,?,?)`, [nombre, tema, usuario.nombre]);
        res.json({
            msg: 'Tarea creada'
        })
    }
}
module.exports = ctrl;