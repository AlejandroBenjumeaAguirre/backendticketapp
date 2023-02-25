
import { Request, Response } from "express";
import subirArchivo from '../helpers/subir-archivo';



const cargarArchivo = async(req: Request, res: Response) => {

    if (!req.files || Object.keys(req.files).length === 0 || !req.files.archivo) {
        return res.status(400).json({
            ok: false,
            msg: 'No hay archivos en la petición'
        });
    }

    try {
        const nombre = await subirArchivo(req.files, ['txt', 'docx']);

        return res.json({
            ok: true,
            nombre
        });
    } catch (error) {
        return res.status(400).json({
            ok: false,
            error
        })
    }

}


export default cargarArchivo;