tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Chess ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 2013 18 -540 -90 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 2005 15 -595 90 0
tp @a[tag=!working,scores={spawnpoint=5..6}] 2060 12 -540 90 0
tp @a[tag=!working,scores={spawnpoint=7..}] 2052 16 -595 -90 0

function du-in:maps/common

summon marker 2013 18 -540 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2005 15 -595 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2060 12 -540 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2052 16 -595 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
execute if entity @a[tag=sus] run summon marker 2008 8 -564 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2032 9 -596 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2060 8 -568 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2036 9 -537 {Tags:["vent","mapSpecific"]}

summon marker 2007 7 -564 {Tags:["ventBlock","mapSpecific"]}
summon marker 2031 8 -596 {Tags:["ventBlock","mapSpecific"]}
summon marker 2060 7 -569 {Tags:["ventBlock","mapSpecific"]}
summon marker 2036 8 -536 {Tags:["ventBlock","mapSpecific"]}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 2060.5 10 -577.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 2005.5 10 -553.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 2021.5 11 -593.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 2021 11 -594 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2060 10 -578 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2005 10 -554 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
