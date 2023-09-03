tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Haunted Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

execute as @a store result score @s spawnpoint run random value 1..8
tp @a[tag=!working,scores={spawnpoint=0..2}] -459 9 -506 -45 0
tp @a[tag=!working,scores={spawnpoint=3..4}] -481 9 -506 -135 0
tp @a[tag=!working,scores={spawnpoint=5..6}] -481 9 -484 45 0
tp @a[tag=!working,scores={spawnpoint=7..}] -459 9 -483 135 0

function du-in:maps/start/common

#Halloween Spawnpoints#
summon marker -459 9 -506 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -481 9 -506 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -481 9 -484 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -459 9 -483 {Tags:["spawnPoint","team2","mapSpecific"]}

#Halloween Vents#
execute if entity @a[tag=sus] run summon marker -485 9 -489 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -456 9 -486 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -473 9 -511 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -472 8 -497 {Tags:["vent","mapSpecific"]}

summon interaction -486 8 -489 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -456 8 -485 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -473 8 -512 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -473 7 -498 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Halloween Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -487 9 -495 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -470 9 -478 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -453 9 -495 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -470 9 -512 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -487 9 -495 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -470 9 -478 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -453 9 -495 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -470 9 -512 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}