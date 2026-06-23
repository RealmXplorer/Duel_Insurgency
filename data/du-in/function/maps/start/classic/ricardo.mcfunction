tellraw @a [{text:"The ",bold:false,color:gray},{text:"San Ricardo ",bold:true,color:"#fceaa2"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleports#
tp @a[scores={spawnpoint=0..2}] -3752 57 1239 -25.25 -5
tp @a[scores={spawnpoint=3..4}] -3726 56 1226
tp @a[scores={spawnpoint=5..6}] -3752 62 1293 -154 6
tp @a[scores={spawnpoint=7..}] -3722 58 1292

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker -3726 56 1226 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -3752 57 1239 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -3715 62 1245 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -3752 62 1293 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -3722 58 1292 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -3778 55 1261 {Tags:["spawnPoint","team2","mapSpecific"]}


#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned -3732 59 1274 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned -3763 57 1254 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -3714 62 1251 run function du-in:ingame/vending_machine/place/west

#Vents
summon interaction -3714 61 1252 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -3733 58 1274 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -3762 56 1254 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

summon marker -3715 62 1252 {Tags:["vent","mapSpecific"]}
summon marker -3734 59 1273 {Tags:["vent","mapSpecific"]}
summon marker -3762 57 1255 {Tags:["vent","mapSpecific"]}

function du-in:ingame/conquest/reset_points

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=ricardoLock] run summon interaction -3760 57 1230 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=ricardoLock] run summon interaction -3760 57 1230 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}

