import { NextFunction, Request, Response } from 'express';
import jwt from 'jsonwebtoken';
import { AuthRequest, Usuario as UserInterface } from '../interfaces/types';

import Usuario from '../models/usuario';

export const validarJWT = async (req: AuthRequest, res: Response, next: NextFunction) => {

    const token = req.header('x-token');

    if(!token){
        return res.status(401).json({
            msg: 'No existe token en la petición'
        });
    }

    try {

        const userId = await jwt.verify(token, process.env.SECRETORPRIVATEKEY as string) as any;

        const user = await Usuario.findByPk(userId.uid) as UserInterface;

        if(!user){
            return res.status(401).json({
                msg: 'Token no valido - usuario no existe'
            })
        }

        // Verificar si el uid tiene estado true
        if(!user.active){
            return res.status(401).json({
                msg: 'Token no valido - usuario inactivo'
            })
        }

        req.usuario = user as UserInterface;

        next();
    } catch (error) {
        console.log(error);
        return res.status(401).json({
            msg: 'Token no valido'
        })
    }

}