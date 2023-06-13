tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Mirage ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0}] -2283 8 189 90 0
tp @a[tag=!working,scores={spawnpoint=1}] -2309 10 195 0 0
tp @a[tag=!working,scores={spawnpoint=2}] -2321 9 222 -180 0
tp @a[tag=!working,scores={spawnpoint=3}] -2340 9 204 -90 0
tp @a[tag=!working,scores={spawnpoint=4}] -2316 13 172 0 0
tp @a[tag=!working,scores={spawnpoint=5}] -2277 10 219 180 0
tp @a[tag=!working,scores={spawnpoint=6}] -2297 10 209 0 0
tp @a[tag=!working,scores={spawnpoint=7..}] -2311 11 227 -180 0

function du-in:maps/start/common

#Spawnpoints#
summon marker -2283 8 189 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2309 10 195 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2321 9 222 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -2340 9 204 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -2316 13 172 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -2277 10 219 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2297 10 209 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -2311 11 227 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker -2290 8 190 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2318 10 194 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2337 9 207 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2321 13 178 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2277 10 216 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2294 12 222 {Tags:["vent","mapSpecific"]}

summon interaction -2291 7 190 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2320 12 179 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2336 8 207 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2276 9 216 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2294 11 221 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2318 12 193 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2313 10 194 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2325 8 194 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2292 8 177 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2290 10 205 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2295 12 221 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2313 10 194 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2325 8 194 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2292 8 177 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2290 10 205 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2295 12 221 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=mirageLock] run summon interaction -2334 10 203 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=mirageLock] run summon interaction -2334 10 203 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}