import { Request } from 'express';
import fileUpload from 'express-fileupload';


export type UploadedFile = fileUpload.UploadedFile;

export interface Usuario {
    getDataValue(arg0: string): any;
    id?: number;
    name?: string;
    group_id?: number;
    entity_id?: number;
    email?: string;
    phone?: number;
    nickname?: string;
    active?: boolean;
    password?: string;

  }

  export interface AuthRequest extends Request {
    usuario: Usuario;
  }