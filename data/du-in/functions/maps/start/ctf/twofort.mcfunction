tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"2Fort ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

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
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1012 5 -955 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1006 16 -972 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -970 11 -979 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1004 10 -991 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -1011 5 -955 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1007 16 -972 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -971 11 -979 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1004 10 -992 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}

##Red Side
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1003 10 -1028 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1037 11 -1040 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -995 5 -1064 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1001 16 -1047 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -1003 10 -1027 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1036 11 -1040 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -996 5 -1064 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1000 16 -1047 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
