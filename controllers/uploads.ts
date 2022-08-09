
import { Request, Response } from "express";
import subirArchivo from '../helpers/subir-archivo';



const cargarArchivo = async(req: Request, res: Response) => {

    if (!req.files || Object.keys(req.files).length === 0 || !req.files.archivo) {
        res.status(400).json('No hay archivos en la petición');
        return;
    }

    try {
        const nombre = await subirArchivo(req.files, ['txt', 'docx']);

        res.json({
            nombre
        });
    } catch (error) {
        res.status(400).json({
            error
        })
    }

}


export default cargarArchivo;