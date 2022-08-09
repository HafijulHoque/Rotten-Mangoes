const database = require('./database')
//All done.No error.

async function getStudioByName(studio_name) {
    let sql = `
        select *
        from STUDIO
        where STUDIO_NAME = :studio_name
    `
    return (await database.execute(sql, [studio_name], database.options)).rows[0]
}

async function getAllStudios() {
    let sql = `
        select STUDIO_NAME
        from STUDIO
    `
    return (await database.execute(sql, [], database.options)).rows
}

async function getMoviesByStudio(studio_name) {
    let sql = `
        select TITLE,plot
        from SHOW
        where STUDIO_NAME = :studio_name
    `
    return (await database.execute(sql, [studio_name], database.options)).rows
}


async function getMoviesByStudio(studio_name) {
    let sql = `
        select Tile,plot
        from SHOW 
        where STUDIO_NAME = :studio_name
    `
    return (await database.execute(sql, [studio_name], database.options)).rows
}


module.exports = {
    getStudioByName,
    getMoviesByStudio,
    getAllStudios
}
