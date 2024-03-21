tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"2Fort ","bold":true,"color":"gold"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={team=2,spawnpoint=1..4}] -1030 16 -979 -90 0
tp @a[tag=!working,scores={team=1,spawnpoint=1..4}] -975 16 -1038 90 0
tp @a[tag=!working,scores={team=1,spawnpoint=5..}] -1027 16 -1045 -90 0
tp @a[tag=!working,scores={team=2,spawnpoint=5..}] -979 16 -971 90 0

function du-in:maps/start/common

#Spawnpoints#
summon marker -975 16 -1038 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1027 16 -1045 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1030 16 -979 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -979 16 -971 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker -1019 6 -1080 {Tags:["ctfFlag","redFlag","mapSpecific"]}
summon marker -998 6 -944 {Tags:["ctfFlag","blueFlag","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
##Blue Side
summon interaction -1012 5 -955 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -1006 16 -972 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -970 11 -979 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -1004 10 -991 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon armor_stand -1012 5 -955 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
summon armor_stand -1006 16 -972 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
summon armor_stand -970 11 -979 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
summon armor_stand -1004 10 -991 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

##Red Side
summon interaction -1003 10 -1028 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -1037 11 -1040 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -995 5 -1064 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -1001 16 -1047 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon armor_stand -1003 10 -1028 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
summon armor_stand -1037 11 -1040 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
summon armor_stand -995 5 -1064 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
summon armor_stand -1001 16 -1047 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

#Vents
summon interaction -998 15 -1039 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1010 15 -980 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -970 6 -980 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1037 6 -1039 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

summon marker -997 16 -1040 {Tags:["vent","mapSpecific"]}
summon marker -1011 16 -979 {Tags:["vent","mapSpecific"]}
summon marker -971 7 -979 {Tags:["vent","mapSpecific"]}
summon marker -1036 7 -1040 {Tags:["vent","mapSpecific"]}

#-998 15 -1039
#-1010 15 -980
#-970 6 -980
#-1037 6 -1039

#-997 16 -1040
#-1011 16 -979
#-971 7 -979
#-1036 7 -1040
