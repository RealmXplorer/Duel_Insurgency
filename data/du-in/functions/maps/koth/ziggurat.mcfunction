tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Ziggurat ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] -264 6 -185 -135 -13
tp @a[tag=!working,scores={spawnpoint=3..4}] -264 6 -230 -45 -15
tp @a[tag=!working,scores={spawnpoint=5..6}] -219 6 -230 45 -15
tp @a[tag=!working,scores={spawnpoint=7..}] -219 6 -185 135 -15

function du-in:maps/common

summon marker -264 6 -185 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -264 6 -230 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -219 6 -230 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -219 6 -185 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud -241.0 14.75 -207.0 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -227.5 9 -192.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -254.5 9 -221.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -226.9 9 -220.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -255.1 9 -193.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting -256 9 -194 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -255 9 -222 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -227 9 -221 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -228 9 -193 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}