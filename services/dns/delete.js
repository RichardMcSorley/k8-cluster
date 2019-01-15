const ZEIT_TOKEN = process.env.ZEIT_TOKEN;
const RECORDS = JSON.parse(process.env.RECORDS);
const DOMAIN = process.env.DOMAIN;
const http = require('https');

const options = {
    host: 'api.zeit.co',
    path: `/v2/domains/${DOMAIN}/records`,
    method: 'GET',
    headers: {
        'Content-Type': 'application/json',
        "Authorization": `Bearer ${ZEIT_TOKEN}`
    }
}
console.log('starting')
http.request(options, res => {
    console.log(res)
    let body = "";
    console.log(body)
    res.on("data", data => {
        body += data;
        console.log(data)
    });
    res.on("end", () => {
        body = JSON.parse(body);
        //startDelete(body);
    });
});



const startDelete = (body) => {
    console.log(body)
    const options = {
        host: 'ttps://api.zeit.co/v2',
        path: `domains/${DOMAIN}/records`,
        method: 'DELETE',
        headers: {
            "Authorization": `Bearer ${ZEIT_TOKEN}`
        }
    }
    const request = http.request(options)
    request.write(JSON.stringify({}));
    request.end();
};
