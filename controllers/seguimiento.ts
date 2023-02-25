import { Request, Response } from 'express';
import Seguimientos from '../models/seguimiento';



export const getSegPorTicket = async ( req: Request, res: Response ) => {

    const { id } = req.params;
    console.log(id);
    const seguimientos = await Seguimientos.findAll({
        where: {
            ticket_id: id
        }
    });

    if(seguimientos){
        res.json(seguimientos);
    }else{
        res.status(404).json({
            msg: `No existen seguimeintos con el id: ${id}`
        });
    }

}

export const postSeg = async ( req: Request, res: Response ) => {

    const { body } = req;

    try {

        const seguimiento = Seguimientos.build(body);
        await seguimiento.save();

        res.json(seguimiento);

    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador'
        })
    }

}

export const putSeg = async ( req: Request, res: Response ) => {

    const { id } = req.params;

    try {

        const seguimiento = await Seguimientos.findByPk( id );

        if(!seguimiento){
            return res.status(404).json({
                ok: false,
                msg: 'No existe ticket con el id ' + id
            });
        }

        await seguimiento.update({ on_hold: true });

        return res.json({
            ok: false,
            msg: `seguimiento ${id} en espera`,
        })

    } catch (error) {
        console.log(error);
        return res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        })
    }

}

export const deleteSeg = async( req: Request, res: Response ) => {

    const { id } = req.params;

    const seguimiento = await Seguimientos.findByPk( id );

    if(!seguimiento){
        return res.status(404).json({
            ok: false,
            msg: 'No existe un usuario con el id: ' + id
        });
    }

    const fecha = new Date();

    await seguimiento.update({ closing_date: fecha, state_id: 2 } );

    return res.status(200).json({
        ok: true,
        seguimiento
    });

}