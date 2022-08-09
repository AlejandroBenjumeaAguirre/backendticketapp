import path from 'path';
import { v4 as uuidv4 } from 'uuid';

import { UploadedFile } from "../interfaces/types";

const subirArchivo = (
  files: any,
  extencionesValidas: string[] = ['png', 'jpg', 'jpeg', 'gif', 'xls', 'docs', 'xlsx', 'txt', 'mp4'],
  carpeta: string = '' ) => {

  return new Promise( (resolve, reject) => {

    const archivo = files.archivo as UploadedFile;
    const nombreCortado = archivo.name.split('.');
    const extencion = nombreCortado[nombreCortado.length - 1];

    // Validar la extencion
    if(!extencionesValidas.includes(extencion)){
      return reject(`La extencion ${extencion} no es permitida, Extenciones validas ${extencionesValidas}`);
    }

    const nombreTemp = uuidv4() + '.' + extencion;
    const uploadPath = path.join(__dirname, '../uploads/', carpeta, nombreTemp );

    archivo.mv(uploadPath, (err: any) => {
      if (err) {
        return reject(err);
      }

      resolve(nombreTemp);
    });

  })

}

export default subirArchivo;