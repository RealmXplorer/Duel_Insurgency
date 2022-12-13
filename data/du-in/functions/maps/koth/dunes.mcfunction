tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Dunesday ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 50045 8 200000 45 -19
tp @a[tag=!working,scores={spawnpoint=3..4}] 50000 5 200000 -44 -23
tp @a[tag=!working,scores={spawnpoint=5..6}] 50000 9 200045 -135 -18
tp @a[tag=!working,scores={spawnpoint=7..}] 50045 7 200045 130 -30.5

function du-in:maps/common

summon marker 50045 8 200000 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 50000 5 200000 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 50000 9 200045 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 50045 7 200045 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud 50022.94 3.75 200023.010 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000}] run summon wandering_trader 50009.9 9 200017.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 50037.1 8 200030.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 50009 9 200017 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 50037 8 200030 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
