tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Dust 2 ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleport#
tp @a[tag=!working,scores={spawnpoint=0..2}] 15035 18 995 65 15
tp @a[tag=!working,scores={spawnpoint=3..4}] 15023 15 1020 3 -21
tp @a[tag=!working,scores={spawnpoint=5..6}] 15022 13 1030 -140 5
tp @a[tag=!working,scores={spawnpoint=7..}] 15049 16 1034 155 3

function du-in:maps/common

#Spawnpoint#
summon marker 15035 18 995 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 15023 15 1020 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 15022 13 1030 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 15049 16 1034 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
execute if entity @a[tag=sus] run summon marker 15032 15 999 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 15040 18 1002 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 15027 15 1020 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 15011 12 1008 {Tags:["vent","mapSpecific"]}


summon marker 15040 17 1003 {Tags:["ventBlock","mapSpecific"]}
summon marker 15033 14 999 {Tags:["ventBlock","mapSpecific"]}
summon marker 15027 14 1021 {Tags:["ventBlock","mapSpecific"]}
summon marker 15011 11 1007 {Tags:["ventBlock","mapSpecific"]}

#Vending Machines#
execute if entity @a[scores={kit=1000}] run summon wandering_trader 15051.9 15 1030.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 15049.9 16 1011.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 15026.5 15 994.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 15010.1 15 1021.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 15036.5 13 1019.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 15026 15 994 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 15036 13 1019 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 15010 15 1021 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 15049 16 1011 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 15051 15 1030 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}