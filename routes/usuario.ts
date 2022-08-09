import { Router } from 'express';
import { check } from 'express-validator';

import {validarCampos, validarJWT, esGroupAdmin } from '../middlewares/index';

import {
            getUsuarios,
            getUsuario,
            postUsuario,
            putUsuario,
            deleteUsuario
} from '../controllers/usuarios';

import { esGrupoValido, esEntidadValida, emailExiste } from '../helpers/db-validators';

const router = Router();

router.get('/', getUsuarios );

router.get('/:id', getUsuario );

router.post('/', [
    validarJWT as any,
    check('name', 'El nombre es requerido').not().isEmpty(),
    check('email', 'El correo no es valido').isEmail(),
    check('phone', 'El telefono debe ser numerico').isNumeric(),
    check('nickname', 'El campo nickname es requerido').not().isEmpty(),
    check('active', 'El campo debe ser boolean').isBoolean(),
    check('password', 'El password debe de ser minimo 6 letras').isLength({min:6}),
    check('group_id').custom( esGrupoValido ),
    check('entity_id').custom( esEntidadValida ),
    check('email').custom( emailExiste ),
    validarCampos], postUsuario );

router.put('/:id', [
    check('group_id').custom( esGrupoValido ),
    check('entity_id').custom( esEntidadValida ),
    check('email').custom( emailExiste ),
    validarCampos],
putUsuario );

router.delete('/:id', [
    validarJWT as any,
    esGroupAdmin
],
deleteUsuario );


export default router;