tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Dust 2 ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleport#
tp @a[tag=!working,scores={spawnpoint=0..2}] 15035 18 995 65 15
tp @a[tag=!working,scores={spawnpoint=3..4}] 15023 15 1020 3 -21
tp @a[tag=!working,scores={spawnpoint=5..6}] 15022 13 1030 -140 5
tp @a[tag=!working,scores={spawnpoint=7..}] 15049 16 1034 155 3

function du-in:maps/start/common

#Spawnpoint#
summon marker 15035 18 995 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 15023 15 1020 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 15022 13 1030 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 15049 16 1034 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
execute if entity @a[tag=sus] run summon marker 15032 15 999 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 15040 18 1002 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 15027 15 1020 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 15011 12 1008 {Tags:["vent","mapSpecific"]}

summon interaction 15040 17 1003 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 15033 14 999 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 15027 14 1021 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 15011 11 1007 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 15052 15 1030 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 15050 16 1011 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 15026 15 993 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 15009 15 1021 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 15036 13 1018 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 15052 15 1030 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 15050 16 1011 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 15026 15 993 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 15009 15 1021 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 15036 13 1018 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}

# summon painting 15026 15 994 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 15036 13 1019 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 15010 15 1021 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 15049 16 1011 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 15051 15 1030 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=d2Lock] run summon interaction 15022 16 1018 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=d2Lock] run summon interaction 15022 16 1018 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}