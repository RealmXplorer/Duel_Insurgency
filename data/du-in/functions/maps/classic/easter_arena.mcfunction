tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0..2}] 920 10 501 -90 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 942 10 501 -180 0
tp @a[tag=!working,scores={spawnpoint=5..6}] 942 10 479 90 0
tp @a[tag=!working,scores={spawnpoint=7..}] 920 10 479 0 0

function du-in:maps/common

#Default Spawnpoints#
summon marker 920 10 501 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 942 10 501 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 942 10 479 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 920 10 479 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 944 10 499 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 916 10 495 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 929 9 488 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 929 10 474 {Tags:["vent","mapSpecific"]}

summon marker 928 9 473 {Tags:["ventBlock","mapSpecific"]}
summon marker 945 9 500 {Tags:["ventBlock","mapSpecific"]}
summon marker 928 8 487 {Tags:["ventBlock","mapSpecific"]}
summon marker 945 9 500 {Tags:["ventBlock","mapSpecific"]}

#Default Vending Machines#
execute if entity @a[scores={kit=1000}] run summon wandering_trader 931.5 10 506.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 947.9 10 490.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 931.5 10 474.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 915.1 10 490.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 931 10 506 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 947 10 490 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 931 10 474 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 915 10 490 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}

#execute if entity @a[scores={kit=1000}] run 