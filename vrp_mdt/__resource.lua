resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page "ui/index.html"

files {
    "ui/index.html",
    "ui/vue.min.js",
    "ui/script.js",
    "ui/badge.png",
	"ui/footer.png",
	"ui/mugshot.png"
}

dependencies {
    'async',
    'mysql-async',
}

server_scripts {
	"@vrp/lib/utils.lua",
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	"sv_mdt.lua",
	"sv_vehcolors.lua"
}

client_scripts {
	"lib/Proxy.lua",
	"lib/Tunnel.lua",
	"cl_mdt.lua"
}
