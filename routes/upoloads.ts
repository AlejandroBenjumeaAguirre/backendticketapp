import { Router } from 'express';

import cargarArchivo from '../controllers/uploads';



const router = Router();

router.post('/', cargarArchivo )


export default router;