tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Desert Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] -2747 6 -5949 -180 0
tp @a[tag=!working,scores={spawnpoint=3..4}] -2726 6 -5970 90 0
tp @a[tag=!working,scores={spawnpoint=5..6}] -2747 6 -5991 0 0
tp @a[tag=!working,scores={spawnpoint=7..}] -2768 6 -5970 -90 0

function du-in:maps/start/common

#Spawnpoints#
summon marker -2747 6 -5949 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2726 6 -5970 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2747 6 -5991 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -2768 6 -5970 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker -2762 6 -5984 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2732 6 -5956 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2739 6 -5978 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2758 6 -5959 {Tags:["vent","mapSpecific"]}

summon interaction -2757 5 -5960 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2732 5 -5955 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2738 5 -5979 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2762 5 -5985 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2734 6 -5974 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2743 6 -5957 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2760 6 -5966 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2751 6 -5983 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2734 6 -5974 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2743 6 -5957 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2760 6 -5966 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2751 6 -5983 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

execute unless entity @a[tag=partyLeader,tag=daLock] run summon interaction -2743 12 -5964 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=daLock] run summon interaction -2743 12 -5964 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}