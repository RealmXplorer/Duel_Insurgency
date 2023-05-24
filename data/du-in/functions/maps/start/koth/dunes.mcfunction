tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Dunesday ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 50045 8 200000 45 -19
tp @a[tag=!working,scores={spawnpoint=3..4}] 50000 5 200000 -44 -23
tp @a[tag=!working,scores={spawnpoint=5..6}] 50000 9 200045 -135 -18
tp @a[tag=!working,scores={spawnpoint=7..}] 50045 7 200045 130 -30.5

function du-in:maps/start/common

summon marker 50045 8 200000 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 50000 5 200000 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 50000 9 200045 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 50045 7 200045 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud 50022.94 3.75 200023.010 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 50010 9 200017 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 50036 8 200030 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 50009 9 200017 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 50037 8 200030 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

execute unless entity @a[tag=partyLeader,tag=duneLock] run summon interaction 50025 5 200028 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=duneLock] run summon interaction 50025 5 200028 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}