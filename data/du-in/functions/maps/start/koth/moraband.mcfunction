tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Moraband ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 5021 11 5247 40 10
tp @a[tag=!working,scores={spawnpoint=3..4}] 5020 7 5290 150 0
tp @a[tag=!working,scores={spawnpoint=5..6}] 4991 7 5290 -151 0
tp @a[tag=!working,scores={spawnpoint=7..}] 4990 11 5247 -36 11


function du-in:maps/start/common

summon marker 5021 11 5247 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 5020 7 5290 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 4991 7 5290 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 4990 11 5247 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud 5006.0 5.75 5269.0 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 4991 10 5257 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 5020 10 5257 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 5001 7 5281 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 4991 10 5256 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 5020 10 5256 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 5001 7 5282 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}

execute unless entity @a[tag=partyLeader,tag=moraLock] run summon interaction 5020 17 5262 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=moraLock] run summon interaction 5020 17 5262 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}