tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"End ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..4}] -387 16 246 -145 0
tp @a[tag=!working,scores={spawnpoint=5..}] -345 16 201 45 0

function du-in:maps/start/common

summon marker -387 16 246 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -345 16 201 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud -365.5 20.75 222.5 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -366 17 215 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -366 17 229 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -366 17 230 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -366 17 214 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}