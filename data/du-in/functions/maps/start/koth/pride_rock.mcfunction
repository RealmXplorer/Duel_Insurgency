tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Pride Rock ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 1983 7 -291
tp @a[tag=!working,scores={spawnpoint=3..4}] 1983 7 -254
tp @a[tag=!working,scores={spawnpoint=5..6}] 2022 7 -254
tp @a[tag=!working,scores={spawnpoint=7..}] 2022 7 -291

function du-in:maps/start/common

summon marker 1983 7 -291 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 1983 7 -254 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2022 7 -254 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2022 7 -291 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud 2003 19.75 -285 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 1999 11 -272 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2006 11 -262 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 2007 11 -262 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 1999 11 -273 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}