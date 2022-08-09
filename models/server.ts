import express from 'express';
import cors from 'cors';
import fileUpload from 'express-fileupload';

import userRoutes from '../routes/usuario';
import ticketsRoutes from '../routes/ticket';
import authLogin from '../routes/auth';
import uploadsRoutes from '../routes/upoloads';
import seguimientoRoutes from '../routes/seguimiento';
import db from '../db/connection';

class Server {

    private app: express.Application;
    private port: string;
    private apiPath = {
        usuarios: '/api/usuarios',
        tickets: '/api/tickets',
        authPath: '/api/auth',
        uploads: '/api/uploads',
        seguimientos: '/api/seg',
    }

    constructor() {
        this.app = express();
        this.port = process.env.PORT || '8000';

        this.dbConecction();
        this.middlewares();

        // Definir mis rutas
        this.routes();
    }

    async dbConecction() {
        try {

            await db.authenticate();
            console.log('Database Online');

        } catch (error: any) {
            throw new Error( error );
        }
    }

    middlewares(){
        // cors
        this.app.use( cors());

        // lectura y parseo del body
        this.app.use( express.json() );

        // Carpeta publica
        this.app.use( express.static('public') );
        /* this.app.get('*', (req, res) => {
            res.sendFile( __dirname + '/public/404.html');
        }) */

        // Fileupload carga de archivos
        this.app.use(fileUpload({
            useTempFiles : true,
            tempFileDir : '/tmp/',
            createParentPath: true
        }));
    }

    routes() {
        this.app.use( this.apiPath.authPath, authLogin ),
        this.app.use( this.apiPath.usuarios, userRoutes),
        this.app.use( this.apiPath.tickets, ticketsRoutes),
        this.app.use( this.apiPath.uploads, uploadsRoutes ),
        this.app.use( this.apiPath.seguimientos, seguimientoRoutes )
    }

    listen(){
        this.app.listen(this.port, () => {
            console.log('Servidor corriendo en puerto ' + this.port );
        });
    }
}

export default Server;
