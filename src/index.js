const app = require("./app");

async function main(){
    await app.listen(3000);
    console.log('Servidor en funcionamiento en Puerto 3000');
}

main();