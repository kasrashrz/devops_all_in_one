const dotenv = require('dotenv');
const express = require('express');
const path = require('path');

// Load .env from parent directory
dotenv.config({ path: path.join(__dirname, '..', '.env') });

const app = express();

app.get('/', (req, res) => {
    const testValue = process.env.IMAGE_TAG || 'default';
    res.send(`
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>Simple Page</title>
            <style>
                body {
                    background-color: black;
                    color: white;
                    height: 100vh;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    margin: 0;
                    font-family: Arial, sans-serif;
                }
            </style>
        </head>
        <body>
            <div>project up at commit: ${testValue}</div>
        </body>
        </html>
    `);
});

app.listen(3000, () => {
    console.log('Server listening on port 3000');
});