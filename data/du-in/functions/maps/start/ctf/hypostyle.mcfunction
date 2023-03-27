tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Hypostyle ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={team=2}] -844 9 -39 135 1
tp @a[tag=!working,scores={team=1}] -751 9 -39 -45 1

function du-in:maps/start/common

summon marker -751 9 -39 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -844 9 -39 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker -750 12 -29 {Tags:["ctfFlag","redFlag","mapSpecific"]}
summon marker -845 12 -29 {Tags:["ctfFlag","blueFlag","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -813 5 -20 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -782 5 -20 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -762 9 -27 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -762 9 -31 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -833 9 -31 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -833 9 -27 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -812 5 -20 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -783 5 -20 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -762 9 -28 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -762 9 -30 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -833 9 -30 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -833 9 -28 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
