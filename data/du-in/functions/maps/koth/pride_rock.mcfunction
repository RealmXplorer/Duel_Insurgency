tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Pride Rock ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 1983 7 -291
tp @a[tag=!working,scores={spawnpoint=3..4}] 1983 7 -254
tp @a[tag=!working,scores={spawnpoint=5..6}] 2022 7 -254
tp @a[tag=!working,scores={spawnpoint=7..}] 2022 7 -291

function du-in:maps/common

summon marker 1983 7 -291 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 1983 7 -254 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2022 7 -254 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2022 7 -291 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud 2003 19.75 -285 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000}] run summon wandering_trader 1999.5 11 -272.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 2007.1 11 -261.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 2007 11 -262 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 1999 11 -273 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}