/*
 * server-0.js
 *
 * Dihyah
 * hiidihyah@gmail.com
 *
 * HTTPS server demo
*/

var http = require('http');

//create HTTP server
var server = http.createServer();

//handler for request
let handler = (req, res) => {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.write('Hello, friend.');
    res.end();
    console.log(req.url);
}

//handle requests with handler
server.on('request', handler);

//listen on port 1337
server.listen(1337);
