import { Router } from 'express';
import { check } from 'express-validator';
import { deleteSeg, getSegPorTicket, postSeg, putSeg } from '../controllers/seguimiento';


import { esEvent1Valid,
         esUserValid,
         esEvent2Valid,
         esEvent3Valid,
         esEvent4Valid,
         esTicketValid,
         esSucesoCierreValid,
         } from '../helpers/db-validators';
import { esGroupAdmin, validarCampos, validarJWT } from '../middlewares';


const router = Router();

router.get('/:id', [
    validarJWT as any
], getSegPorTicket);

router.post('/', [
    validarJWT as any,
    check('created_date').isDate().not().isEmpty(),
    check('description').not().isEmpty(),
    check('user_id').custom( esUserValid ),
    check('ticket_id').custom( esTicketValid ),
    check('eventclosing_id').custom( esSucesoCierreValid ),
    check('event1_id').custom( esEvent1Valid ),
    check('event2_id').custom( esEvent2Valid ),
    check('event3_id').custom( esEvent3Valid ),
    check('event4_id').custom( esEvent4Valid ),
    check('public_sg').isBoolean(),
    check('on_hold').isBoolean(),
    validarCampos],  postSeg);

router.put('/:id', [
    validarJWT as any,
    esGroupAdmin
], putSeg);

router.delete('/:id', [
    validarJWT as any,
    esGroupAdmin
], deleteSeg);



export default router;