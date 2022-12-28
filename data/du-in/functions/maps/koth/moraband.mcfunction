tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Moraband ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 5021 11 5247 40 10
tp @a[tag=!working,scores={spawnpoint=3..4}] 5021 7 5290 150 -2
tp @a[tag=!working,scores={spawnpoint=5..6}] 4990 7 5290 -151 -2
tp @a[tag=!working,scores={spawnpoint=7..}] 4990 11 5247 -36 11

function du-in:maps/common

summon marker 5021 11 5247 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 5021 7 5290 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 4990 7 5290 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 4990 11 5247 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud 5005 5.75 5269 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 4991.5 10 5256.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 5020.5 10 5256.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 5001.5 7 5282.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 4991 10 5256 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 5020 10 5256 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 5001 7 5282 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
