tellraw @a [{text:"The ",bold:false,color:gray},{text:"Hypostyle ",bold:true,color:"#91a8ed"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={team=2}] -820 9 -38 0 0
tp @a[scores={team=1}] -775 9 -20 -180 0

function du-in:ingame/startround/timer/start_timer

summon marker -775 9 -20 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -775 9 -38 {Tags:["spawnPoint","team1","mapSpecific"]}

summon marker -820 9 -38 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -820 9 -20 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker -845 12 -29 {Tags:["ctfFlag","blueFlag","gameObject","mapSpecific"],UUID:[I;-194502283,1592740172,-1696858993,1865097178]}
summon marker -750 12 -29 {Tags:["ctfFlag","redFlag","gameObject","mapSpecific"],UUID:[I;1163776790,2035696638,-2125434707,-1208629855]}

#Reset Banners
function du-in:ingame/ctf/banner_reset

#execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
#execute at f4682175-5eef-494c-9adb-fc8f6f2b1fda run setblock ~ ~ ~ blue_banner

#execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy
#execute at 455dd316-7956-43fe-8150-70adb7f5c5a1 run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned -812 5 -20 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned -783 5 -20 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned -762 9 -27 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned -833 9 -27 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -762 9 -31 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -833 9 -31 run function du-in:ingame/vending_machine/place/north

#Vents
summon marker -833 1 -39 {Tags:["vent","mapSpecific"]}
summon marker -809 5 -21 {Tags:["vent","mapSpecific"]}
summon marker -786 5 -20 {Tags:["vent","mapSpecific"]}
summon marker -761 1 -39 {Tags:["vent","mapSpecific"]}

summon interaction -832 1 -40 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -808 4 -20 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -787 4 -20 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -762 1 -40 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#-832 1 -40
#-808 4 -20
#-787 4 -20
#-762 1 -40

#-833 1 -39
#-809 5 -21
#-786 5 -20
#-761 1 -39