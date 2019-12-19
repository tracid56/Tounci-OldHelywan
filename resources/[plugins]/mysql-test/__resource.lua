dependencies {
    "mysql-test"
}

server_scripts {
    "@mysql-async/lib/MySQL.lua", -- Mysql-async
    "server/init.lua" -- Ma ressource côté serveur
}
