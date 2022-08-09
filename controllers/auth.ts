import { Request, Response } from "express";
import Usuario from '../models/usuario';
import bcrypt from 'bcryptjs';
import { generarJWT } from '../helpers/generar-jwt';


export const login = async(req: Request, res: Response) => {

    // tslint:disable-next-line:no-shadowed-variable
    const { body } = req;

    try {

        // Verificar si el email existe
        const usuario = await Usuario.findOne({
            where: {
                email: body.email
            }
        });

        if(!usuario){
            return res.status(400).json({
                msg: 'Usuario / Password no son correctos - correo'
            });
        }

        // Verificar si el usuario esta activo
        if(!usuario.getDataValue('active')){
            return res.status(400).json({
                msg: 'Usuario / Password no son correctos - estado'
            });
        }

        // Verificar la contraseña
        const validPassword = bcrypt.compareSync(body.password, usuario.getDataValue('password'));
        if( !validPassword){
            return res.status(400).json({
                msg: 'Usuario / Password no son correctos - password'
            });
        }

        // Generar JWT
        const token = await generarJWT(usuario.getDataValue('uid'));

        res.json({
            token,
            body: {
                uid: usuario.getDataValue('uid'),
                name: usuario.getDataValue('name'),
                nickname: usuario.getDataValue('nickname'),
                email: usuario.getDataValue('email'),
                phone: usuario.getDataValue('phone')
            }
        });

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            msg: 'Hable con el administrador'
        });
    }
}