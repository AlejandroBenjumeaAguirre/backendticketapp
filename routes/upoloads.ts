import { Router } from 'express';
import { check } from 'express-validator';

import cargarArchivo from '../controllers/uploads';
import validarCampos from '../middlewares/validar-campos';


const router = Router();

router.post('/', cargarArchivo )


export default router;