tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"San Ricardo ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={team=1}] -3752 57 1239 -25.25 -5
tp @a[tag=!working,scores={team=2}] -3752 62 1293 -154 6

function du-in:maps/start/common

#Spawnpoints#
summon marker -3752 57 1239 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -3752 62 1293 {Tags:["spawnPoint","team2","mapSpecific"]}

#Points#
summon marker -3739 58 1266 {Tags:["cqPoint","mapSpecific"]}
summon marker -3764 56 1261 {Tags:["cqPoint","mapSpecific"]}
summon marker -3719 61 1251 {Tags:["cqPoint","mapSpecific"]}

#Vending Machines#
summon interaction -3732 59 1274 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -3763 57 1254 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -3714 62 1251 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -3732 59 1273 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -3763 57 1255 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -3715 62 1251 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#-3732 59 1274
#-3763 57 1254
#-3714 62 1251

#-3732 59 1273 n
#-3763 57 1255 s
#-3715 62 1251 w

#Vents
summon interaction -3714 61 1252 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -3733 58 1274 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -3762 56 1254 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}

summon marker -3715 62 1252 {Tags:["vent","mapSpecific"]}
summon marker -3734 59 1273 {Tags:["vent","mapSpecific"]}
summon marker -3762 57 1255 {Tags:["vent","mapSpecific"]}

#-3714 61 1252
#-3733 58 1274
#-3762 56 1254

#-3715 62 1252
#-3734 59 1273
#-3762 57 1255