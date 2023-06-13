tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Ziggurat ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] -264 6 -185 -135 -13
tp @a[tag=!working,scores={spawnpoint=3..4}] -264 6 -230 -45 -15
tp @a[tag=!working,scores={spawnpoint=5..6}] -219 6 -230 45 -15
tp @a[tag=!working,scores={spawnpoint=7..}] -219 6 -185 135 -15

function du-in:maps/start/common

summon marker -264 6 -185 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -264 6 -230 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -219 6 -230 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -219 6 -185 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud -241.0 14.75 -207.0 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -227 9 -193 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -227 9 -222 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -256 9 -222 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -256 9 -193 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -227 9 -193 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -227 9 -222 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -256 9 -222 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -256 9 -193 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=zigLock] run summon interaction -247 6 -203 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=zigLock] run summon interaction -247 6 -203 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}