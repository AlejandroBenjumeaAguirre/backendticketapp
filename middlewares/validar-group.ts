import { NextFunction, Request, Response } from "express";
import { AuthRequest } from "../interfaces/types";


export const esGroupAdmin = (req: AuthRequest, res: Response, next: NextFunction) => {

    if(!req.usuario){
        return res.status(500).json({
            msg: 'Se quiere verificar el grupo sin validar el token primero'
        });
    }

    // tslint:disable-next-line:no-unused-expression
    const { group_id, name } = req.usuario;

    if( group_id !== 1 ){
        return res.status(401).json({
            msg: `${name} no es administrador, no-puede eliminar usuarios`
        });
    }

    next();
}

export const tieneGroup = ( ...groups: number[] ) => {

    return (req: AuthRequest, res: Response, next: NextFunction) => {

        if(!req.usuario){
            return res.status(500).json({
                msg: 'Se quiere verificar el grupo sin validar el token primero'
            });
        }

        if(req.usuario.group_id){
            if(groups.includes(req.usuario.group_id)){
                return res.status(401).json({
                    msg: `El servicio requiere uno de estos groups ${groups}`
                });
            }
        }

        next();
    }
}