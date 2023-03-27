tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Cliffside Asylum ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleport#
tp @a[tag=!working,scores={spawnpoint=0..2}] 5003 5 -5007 180 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 5003 5 -5092 90 0
tp @a[tag=!working,scores={spawnpoint=5..6}] 5010 5 -5058 90 0
tp @a[tag=!working,scores={spawnpoint=7..}] 4996 5 -5035 -90 0

function du-in:maps/start/common

#Spawnpoints#
summon marker 5003 5 -5007 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 5003 5 -5092 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 5010 5 -5058 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 4996 5 -5035 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
execute if entity @a[tag=sus] run summon marker 5009 5 -5035 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 4997 5 -5018 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 4998 5 -5092 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 4997 5 -5051 {Tags:["vent","mapSpecific"]}

summon interaction 5010 4 -5035 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 4996 4 -5019 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 4997 4 -5093 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 4996 4 -5051 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 5005 5 -5015 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 5005 5 -5054 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 5008 5 -5090 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 5007 5 -5090 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 5004 5 -5054 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 5005 5 -5016 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}