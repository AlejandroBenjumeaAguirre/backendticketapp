/* import { Client } from 'pg';

async function getConnection(){
    const client = new Client({
        host: 'localhost',
        port: 5432,
        user: 'postgres',
        password: 'AB120792',
        database: 'ticketapp'
    });
    await client.connect();
    return client;
}

export default getConnection;
 */

import { Pool } from "pg";

const pool = new Pool({
    host: 'localhost',
    port: 5432,
    user: 'root',
    password: 'AB120792',
    database: 'ticketapp'
});

export default pool;