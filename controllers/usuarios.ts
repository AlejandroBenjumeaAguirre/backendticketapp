import { Request, Response } from 'express';
import bcrypt from 'bcryptjs';
import Usuario from '../models/usuario';



export const getUsuarios = async( req: Request, res: Response ) => {

    const { limite = 10, desde = 0 } = req.query;

    const usuarios = await Usuario.findAndCountAll({
        order: ['id'],
        offset: Number(desde),
        limit: Number(limite)
    });

    return res.json({
        ok: true,
        usuarios
    });

}

export const getUsuario = async ( req: Request, res: Response ) => {

    const { id } = req.params;

    const usuario = await Usuario.findByPk( id );

    if(usuario){
        return res.status(200).json({
            ok: true,
            usuario
        });
    }else{
        return res.status(404).json({
            ok: false,
            msg: `No existe un usario con el id: ${id}`
        });
    }

}

export const postUsuario = async ( req: Request, res: Response ) => {

    const { body } = req;

    try {

        // Encriptacion de la contraseña
        const salt = bcrypt.genSaltSync();
        body.password = bcrypt.hashSync( body.password, salt );

        const usuario = Usuario.build(body);
        await usuario.save();

        return res.json({
            ok: true,
            msg: 'Usuario creado con exito',
            body: {
                id: usuario.getDataValue('id'),
                name: usuario.getDataValue('name'),
                nickname: usuario.getDataValue('nickname'),
                email: usuario.getDataValue('email'),
                phone: usuario.getDataValue('phone')
            }
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        })
    }

}

export const putUsuario = async ( req: Request, res: Response ) => {

    const { id } = req.params;
    const { uid, password, ...body } = req.body;

    if(password){
        const salt = bcrypt.genSaltSync();
        body.password = bcrypt.hashSync( password, salt );

    }

    try {

        const usuario = await Usuario.findByPk( id );

        if(!usuario){
            return res.status(404).json({
                ok: false,
                msg: 'No existe un usuario con el id ' + id
            });
        }

        /* const existeEmail = await Usuario.findOne({
            where: {
                email: body.email
            }
        });

        if(existeEmail){
            return res.status(400).json({
                msg: "Ya existe un usuario con el Email " + body.email
            });
        } */

        await usuario.update( body );

        return res.json({
            ok: true,
            msg: `Usuario ${id} actualizado`,
            body: {
                id: usuario.getDataValue('id'),
                name: usuario.getDataValue('name'),
                nickname: usuario.getDataValue('nickname'),
                email: usuario.getDataValue('email'),
                phone: usuario.getDataValue('phone')
            }
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        })
    }

}

export const deleteUsuario = async( req: Request, res: Response ) => {

    const { id } = req.params;

    const usuario = await Usuario.findByPk( id );

    if(!usuario){
        return res.status(404).json({
            ok: false,
            msg: 'No existe un usuario con el id: ' + id
        });
    }

    await usuario.update({ active: false });

    return res.json({
        ok: true,
        msg: `Usuario ${id} eliminado`,
        body: {
            id: usuario.getDataValue('id'),
            name: usuario.getDataValue('name'),
            nickname: usuario.getDataValue('nickname'),
            email: usuario.getDataValue('email'),
            phone: usuario.getDataValue('phone')
        }
    });

}





