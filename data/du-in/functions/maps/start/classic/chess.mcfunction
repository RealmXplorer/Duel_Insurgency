tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Chess ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 2063 9 -597 -90 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 2058 6 -542 90 0
tp @a[tag=!working,scores={spawnpoint=5..6}] 2002 11 -537 90 0
tp @a[tag=!working,scores={spawnpoint=7..}] 2007 8 -593 -90 0

function du-in:maps/start/common

summon marker 2063 9 -597 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2058 6 -542 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2002 11 -537 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2007 8 -593 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
execute if entity @a[tag=sus] run summon marker 2008 8 -564 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2032 9 -596 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2060 8 -568 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2036 9 -537 {Tags:["vent","mapSpecific"]}

summon interaction 2007 7 -564 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 2031 8 -596 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 2060 7 -569 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 2036 8 -536 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2064 10 -587 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2001 10 -547 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2012 9 -599 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2045 8 -536 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 2064 10 -587 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 2001 10 -547 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 2012 9 -599 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 2045 8 -536 {Rotation:[-180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}

# summon painting 2021 11 -594 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 2060 10 -578 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 2005 10 -554 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 2037 9 -549 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=chessLock] run summon interaction 2021 12 -557 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=chessLock] run summon interaction 2021 12 -557 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
