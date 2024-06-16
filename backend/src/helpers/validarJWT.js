const jwt = require('jsonwebtoken');
const { conetion } = require('../db/db.js');
const validarJWT = async (token) => {
    try {
        const { id } = jwt.verify(token, 'mysecret');
        const connection = await conetion();
        const [usuario] = await connection.query('SELECT * FROM usuarios WHERE id_user=? LIMIT 1', id);
        if(!usuario){
            return false;
        } else {
            return usuario[0];
        }
    } catch (error) {
        console.log(error);
        return false;
    }
}
module.exports = validarJWT;