tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Wild West ","bold":true,"color":"#c7976d"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[scores={spawnpoint=0..2}] -4136 21 97
tp @a[scores={spawnpoint=3..4}] -4163 20 79
tp @a[scores={spawnpoint=5..6}] -4142 20 78
tp @a[scores={spawnpoint=7..}] -4134 20 143

function du-in:maps/start/common

#Wild West Spawnpoints#
summon marker -4136 21 97 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -4163 20 79 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -4142 20 78 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -4165 20 109 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -4134 20 143 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -4139 26 110 {Tags:["spawnPoint","team2","mapSpecific"]}

#Sus Vents#
execute if entity @a[tag=sus] run summon marker -4131 20 125 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -4138 25 124 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -4149 23 147 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -4166 20 125 {Tags:["vent","mapSpecific"]}

summon interaction -4148 22 147 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -4138 24 125 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -4132 19 125 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -4165 20 124 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Saac Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -4135 21 102 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -4137 21 109 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon interaction -4141 21 128 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
#execute if entity @a[scores={kit=1000..1001}] run summon interaction -4161 19 82 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -4135 21 102 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -4137 21 109 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -4141 21 128 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
#execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -4161 20 81 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=wwLock] run summon interaction -4133 21 100 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=wwLock] run summon interaction -4133 21 100 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
