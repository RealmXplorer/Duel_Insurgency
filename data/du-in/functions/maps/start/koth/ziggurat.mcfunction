tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Ziggurat ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 233 6 -1882 -135 -13
tp @a[tag=!working,scores={spawnpoint=3..4}] 233 6 -1925 -45 -15
tp @a[tag=!working,scores={spawnpoint=5..6}] 276 6 -1925 45 -15
tp @a[tag=!working,scores={spawnpoint=7..}] 276 6 -1882 135 -15

#233 6 -1882
#233 6 -1925
function du-in:maps/start/common

summon marker 233 6 -1882 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 233 6 -1925 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 276 6 -1925 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 276 6 -1882 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud 255.0 15 -1903.0 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 240 9 -1889 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 240 9 -1918 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 269 9 -1918 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 269 9 -1889 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 240 9 -1889 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:63,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 240 9 -1918 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:63,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 269 9 -1918 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:63,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 269 9 -1889 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:63,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=zigLock] run summon interaction 249 6 -1899 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=zigLock] run summon interaction 249 6 -1899 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}