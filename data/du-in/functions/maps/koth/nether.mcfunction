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
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -197.1 7 38.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -167.1 9 40.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -168.5 7 66.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -200.5 9 69.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting -201 9 69 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -198 7 38 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -169 7 66 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -168 9 40 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}