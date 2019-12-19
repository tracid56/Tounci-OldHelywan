Config = {}

Config.Locale = 'en'

Config.MaxPayment = 25000
Config.MinPayment = 15000
Config.ChanceWeapon = 0 -- chance to get a weapon when mission succeeded, 0 = off 100 = always

Config.AudioFile = '' -- interactsound audiofile to play when in cutscene
Config.AudioFileLength = 10 -- length for the audiofile (seconds)

Config.HoursSucess = 1 -- hours you need to be active on the server until you can steal a car again if you succeed (will start counting when active on the server for 30 seconds)
Config.HoursFailure = 1 -- hours you need to be active on the server until you can steal a car again if you fail (will start counting when active on the server for 30 seconds)

Config.CopsRequired = 2 -- cops required to start mission, not finished

-- for vehicle spawn + heading for vehicle
Config.spawnPoint = {
    { x = 131.90, y = -3210.54, z = 5.4, h = 265.54 }, --港口(舊夜店附近)
}

-- where you leave the vehicle
Config.dropPoint = {
    { x = -2192.39, y = 4265.86, z = 47.72 }, --西邊高速公路旁
    { x = -2597.13, y = 1930.28, z = 166.88 }, --西邊黑道家
    { x = 3594.56, y = 3661.60, z = 33.47 }, --人道實驗室
    { x = 105.72, y = 3700.68, z = 39.36 }, --飛車幫
    { x = 1363.61, y = -2100.88, z = 51.60 }, --東南採油廠
    { x = 603.37, y = -437.69, z = 24.36 }, --高速公路橋下(警局附近)
    { x = -1077.82, y = -1677.05, z = 4.18 }, --沙灘黑人區
    { x = 60.61, y = 159.61, z = 104.33 }, --好麥屋區
    { x = -441.42, y = 6341.40, z = 12.30 }, --西北小鎮
    { x = 1730.07, y = 3314.27, z = 40.80 }, --沙漠機場
    { x = -124.30, y = -2683.23, z = 5.66 }, --港口
    { x = 1217.28, y = -2983.27, z = 5.87 }, --港口2(船邊)
}

Config.Model = {
	"fmj",
	"sc1",
	"t20",
	"le7b",
	"adder",
	"tyrus",
	"vacca",
	"bullet",
	"osiris",
	"reaper",
	"sheava",
	"voltic",
	"autarch",
	"cheetah",
	"cyclone",
	"visione",
	"banshee2",
	"entityxf",
	"infernus",
	"sultanrs",
	"turismor",
	"zentorno",
	"prototipo",
	"pfister811",
	"xa21"
}