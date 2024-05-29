var database = require("../database/config");

function buscarUltimasMedidas() {

    var instrucaoSql = `select 'Conselho' as tipo, count(*) as qtd from usuario where fktipo= 1
    union all
    select 'Versiculo' as tipo, count(*) as qtd from usuario where fktipo= 2
    union all
    select 'Frases' as tipo, count(*) as qtd from usuario where fktipo= 3;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// function buscarMedidasEmTempoReal(idAquario) {

//     var instrucaoSql = `SELECT 
//         dht11_temperatura as temperatura, 
//         dht11_umidade as umidade,
//                         DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
//                         fk_aquario 
//                         FROM medida WHERE fk_aquario = ${idAquario} 
//                     ORDER BY id DESC LIMIT 1`;

//     console.log("Executando a instrução SQL: \n" + instrucaoSql);
//     return database.executar(instrucaoSql);
// }

module.exports = {
    buscarUltimasMedidas,
    // buscarMedidasEmTempoReal
}
