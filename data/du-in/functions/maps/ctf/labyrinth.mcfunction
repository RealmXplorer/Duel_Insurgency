tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Labyrinth ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={team=2}] 4831 7 5063 135 1
tp @a[tag=!working,scores={team=1}] 4745 7 5023 -45 1

function du-in:maps/common

#Spawnpoints#
summon marker 4745 7 5023 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 4831 7 5063 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker 4748 7 5026 {Tags:["ctfFlag","redFlag","mapSpecific"]}
summon marker 4828 7 5061 {Tags:["ctfFlag","blueFlag","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 4826.1 7 5062.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 4823.5 7 5032.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 4772.5 7 5041.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 4791.5 7 5059.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 4747.5 7 5028.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
