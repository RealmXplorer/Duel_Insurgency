tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Nether ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] -223 7 56 -90 0
tp @a[tag=!working,scores={spawnpoint=3..4}] -184 7 17 0 0
tp @a[tag=!working,scores={spawnpoint=5..6}] -148 7 55 90 0
tp @a[tag=!working,scores={spawnpoint=7..}] -183 7 92 180 0

function du-in:maps/common

summon marker -223 7 56 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -184 7 17 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -148 7 55 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -183 7 92 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -223 7 56 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -184 7 17 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -148 7 55 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -183 7 92 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud -183.0 6.75 56.0 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -197 7 38 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -167 9 40 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -169 7 67 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -201 9 70 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -201 9 69 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -198 7 38 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -169 7 66 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -168 9 40 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}