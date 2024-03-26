tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"End ","bold":true,"color":"#aa77d9"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[scores={spawnpoint=0..4}] -387 16 246 -145 0
tp @a[scores={spawnpoint=5..}] -345 16 201 45 0

function du-in:maps/start/common

#Spawnpoints
summon marker -387 16 246 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -345 16 201 {Tags:["spawnPoint","team2","mapSpecific"]}

#Hill point
summon area_effect_cloud -365.5 20.75 222.5 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -366 17 215 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -366 17 229 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -366 17 215 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -366 17 229 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=endLock] run summon interaction -361 18 217 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=endLock] run summon interaction -361 18 217 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}