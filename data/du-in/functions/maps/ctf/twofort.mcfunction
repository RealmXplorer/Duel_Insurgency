tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"2Fort ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={team=2,spawnpoint=1..4}] -1030 16 -979 -90 0
tp @a[tag=!working,scores={team=1,spawnpoint=1..4}] -975 16 -1038 90 0
tp @a[tag=!working,scores={team=1,spawnpoint=5..}] -1027 16 -1045 -90 0
tp @a[tag=!working,scores={team=2,spawnpoint=5..}] -979 16 -971 90 0

function du-in:maps/common

#Spawnpoints#
summon marker -975 16 -1038 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1027 16 -1045 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1030 16 -979 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -979 16 -971 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker -1019 6 -1080 {Tags:["ctfFlag","redFlag","mapSpecific"]}
summon marker -998 6 -944 {Tags:["ctfFlag","blueFlag","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -1017.5 11 -957.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -1010.9 5 -954.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -1006.1 16 -971.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -970.1 11 -978.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -1003.5 10 -991.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -1002.5 10 -1026.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -1035.9 11 -1039.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -988.5 11 -1060.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -995.1 5 -1063.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -999.9 16 -1046.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting -1018 11 -958 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1011 5 -955 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1007 16 -972 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -971 11 -979 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1004 10 -992 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}

summon painting -1003 10 -1027 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1036 11 -1040 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -989 11 -1061 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -996 5 -1064 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1000 16 -1047 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
