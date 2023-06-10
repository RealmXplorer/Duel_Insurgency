tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Hypostyle ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={team=2}] -820 9 -38 0 0
tp @a[tag=!working,scores={team=1}] -775 9 -20 -180 0

function du-in:maps/start/common

summon marker -775 9 -20 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -775 9 -38 {Tags:["spawnPoint","team1","mapSpecific"]}

summon marker -820 9 -38 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -820 9 -20 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker -750 12 -29 {Tags:["ctfFlag","redFlag","mapSpecific"]}
summon marker -845 12 -29 {Tags:["ctfFlag","blueFlag","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
summon interaction -812 5 -20 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -783 5 -20 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -762 9 -27 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -762 9 -31 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -833 9 -31 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -833 9 -27 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon armor_stand -812 5 -20 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
summon armor_stand -783 5 -20 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
summon armor_stand -762 9 -27 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
summon armor_stand -762 9 -31 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
summon armor_stand -833 9 -31 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
summon armor_stand -833 9 -27 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}

# summon painting -812 5 -20 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting -783 5 -20 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting -762 9 -28 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting -762 9 -30 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting -833 9 -30 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting -833 9 -28 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

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