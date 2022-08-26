import { Router } from 'express';
import { getEntity } from '../controllers/entity';

const router = Router();

router.get('/', getEntity );

export default router;