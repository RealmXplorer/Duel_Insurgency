tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Pride Rock ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 1983 7 -291
tp @a[tag=!working,scores={spawnpoint=3..4}] 1983 7 -254
tp @a[tag=!working,scores={spawnpoint=5..6}] 2022 7 -254
tp @a[tag=!working,scores={spawnpoint=7..}] 2022 7 -291

function du-in:maps/start/common

summon marker 1983 7 -291 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 1983 7 -254 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2022 7 -254 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2022 7 -291 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud 2003 19.75 -285 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 1999 11 -272 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2006 11 -262 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 1999 11 -272 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 2006 11 -262 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=prideLock] run summon interaction 1998 16 -270 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=prideLock] run summon interaction 1998 16 -270 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
