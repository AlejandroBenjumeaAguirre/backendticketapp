import { Router } from 'express';
import { getGroup } from '../controllers/group';

const router = Router();

router.get('/', getGroup );

export default router;