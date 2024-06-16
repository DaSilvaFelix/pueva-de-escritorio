const {conetion} = require('../db/db.js')
const bcrypt = require('bcrypt');
const generarJWT = require("../helpers/generarJWT.js");
const ctrl = {};
ctrl.register = async (req, res) =>{
    const {nombre, apellido, nombre_user, correo, contrasenia} = req.body;
    const connection = await conetion();
    const sql = 'INSERT INTO usuarios ( nombre, apellido, nombre_user, correo, contrasenia) VALUES (?,?,?,?,?)';
    const hashContrasenia = bcrypt.hashSync(contrasenia, 10);
    await connection.query(sql, [nombre, apellido, nombre_user, correo, hashContrasenia]);
    res.json({
        msg: 'Registrado correctamente'
    });
}
ctrl.login = async (req, res) => {
    const { nombre_user, contrasenia } = req.body;
    const connection = await conetion();
    const sql = 'SELECT * FROM usuarios WHERE nombre_user=? LIMIT 1';
    const [buscarUsuario] = await connection.query(sql, nombre_user);
    if(!buscarUsuario[0]){
        return res.status(400).json({
            msg: 'El usuario no existe'
        })
    }
    const validarContrasenia = bcrypt.compareSync(contrasenia, buscarUsuario[0].contrasenia);
    if(!validarContrasenia){
        return res.status(401).json({
            msg: 'El usuario o contraseña no coiciden'
        })
    }
    const token = await generarJWT({id: buscarUsuario[0].id_user});
    return res.json({
        msg: 'Inicio de sesión exitoso',
        token
    })
}
module.exports = ctrl;