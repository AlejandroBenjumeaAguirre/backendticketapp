import dotenv from 'dotenv';
import Server from './models/server';

// Configuracion dontenv
dotenv.config();

const server = new Server();

server.listen();