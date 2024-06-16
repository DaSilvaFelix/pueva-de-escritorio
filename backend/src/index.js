const express = require('express');
const cors = require('cors');
const morgan = require('morgan');
const app = express();
app.use(cors());
app.use(morgan('dev'));
app.use(express.json());
app.use(require('./routers/auth.routes'));
app.use(require('./routers/tareas.routes'));
app.listen(3000, () => { 
    console.log('Servidor corriendo en el puerto 3000');
})