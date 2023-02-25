import { Router } from 'express';
import { check } from 'express-validator';
import { login, revalidarToken } from '../controllers/auth';
import { validarJWT } from '../middlewares';
import validarCampos from '../middlewares/validar-campos';


const router = Router();

router.post('/login',  [
    check('nickname', 'El nickname es obligatorio').not().isEmpty(),
    check('password', 'La contraseña es obligatoria').not().isEmpty(),
    validarCampos
],
login);

router.get('/renew', [
    validarJWT as any
], revalidarToken as any);


export default router;