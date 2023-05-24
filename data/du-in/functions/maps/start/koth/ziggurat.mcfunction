tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Ziggurat ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] -264 6 -185 -135 -13
tp @a[tag=!working,scores={spawnpoint=3..4}] -264 6 -230 -45 -15
tp @a[tag=!working,scores={spawnpoint=5..6}] -219 6 -230 45 -15
tp @a[tag=!working,scores={spawnpoint=7..}] -219 6 -185 135 -15

function du-in:maps/start/common

summon marker -264 6 -185 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -264 6 -230 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -219 6 -230 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -219 6 -185 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud -241.0 14.75 -207.0 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -228 9 -194 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -255 9 -221 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -228 9 -221 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -255 9 -194 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -256 9 -194 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -255 9 -222 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -227 9 -221 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -228 9 -193 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

execute unless entity @a[tag=partyLeader,tag=zigLock] run summon interaction -247 6 -203 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=zigLock] run summon interaction -247 6 -203 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}