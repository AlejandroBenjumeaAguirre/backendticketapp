import { Router } from 'express';
import { check } from 'express-validator';
import {
            getTickets,
            getTicket,
            postTicket,
            putTicket,
            deleteTicket,
            getTicketsPorGroup
} from '../controllers/tickets';

import { esEntidadValida,
         esEvent1Valid,
         esStateValid,
         esUserValid,
         esEvent2Valid,
         esEvent3Valid,
         esEvent4Valid,
         } from '../helpers/db-validators';
import { esGroupAdmin, validarCampos, validarJWT } from '../middlewares';
import { getTicketsPorUser } from '../controllers/tickets';


const router = Router();

router.get('/', [
    validarJWT as any
],getTickets );

router.get('/usr/:id', [
    validarJWT as any
], getTicketsPorUser);

router.get('/group/:uid', [
    validarJWT as any
], getTicketsPorGroup);

router.get('/:id', [
    validarJWT as any
],getTicket );

router.post('/', [
    validarJWT as any,
    check('affair', 'El asunto es requerido y debe de ser texto').not().isEmpty(),
    check('description', 'La descripcion del ticket es requerido y debe de ser texto').not().isEmpty(),
    check('createdAt', 'La fecha es requerida y deb de ser formato fecha').not().isEmpty().isDate(),
    check('state_id').custom( esStateValid ),
    check('user_id').custom( esUserValid ),
    check('priority_id').custom( esEntidadValida ),
    check('event1_id').custom( esEvent1Valid ),
    check('event2_id').custom( esEvent2Valid ),
    check('event3_id').custom( esEvent3Valid ),
    check('event4_id').custom( esEvent4Valid ),
    validarCampos], postTicket );

router.put('/:id', [
    validarJWT as any,
    esGroupAdmin
],putTicket );

router.delete('/:id', [
    validarJWT as any,
    esGroupAdmin
],deleteTicket );



export default router;