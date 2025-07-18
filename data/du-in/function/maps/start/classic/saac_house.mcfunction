tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Saac's Literal House ",bold:true,color:"#0dd9e0"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] -2001 36 -1985
tp @a[scores={spawnpoint=3..4}] -2003 47 -1984
tp @a[scores={spawnpoint=5..6}] -2013 36 -1947
tp @a[scores={spawnpoint=7..}] -1992 39 -1994

function du-in:ingame/startround/timer/start_timer

execute unless score #main lobbyTheme matches 1.. unless biome -2001 36 -1985 plains run fillbiome -2052 24 -1910 -1962 79 -2021 plains
execute if score #main lobbyTheme matches 1..2 unless biome -2001 36 -1985 du-in:fall run fillbiome -2052 24 -1910 -1962 79 -2021 du-in:fall
execute if score #main lobbyTheme matches 4 unless biome -2001 36 -1985 du-in:spring run fillbiome -2052 24 -1910 -1962 79 -2021 du-in:spring

#Saac Spawnpoints#
summon marker -2001 36 -1985 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2003 47 -1984 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2008 47 -1968 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2013 36 -1947 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -1992 39 -1994 {Tags:["spawnPoint","team2","mapSpecific"]}
#summon marker -1994 47 -1968 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -2006 36 -1985 {Tags:["spawnPoint","team2","mapSpecific"]}

#Saac Vents#
execute if entity @a[tag=sus] run summon marker -2004 36 -1973 {Tags:["vent","mapSpecific"]}
#execute if entity @a[tag=sus] run summon marker -1991 47 -1969 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -1991 39 -1977 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -1992 36 -1949 {Tags:["vent","mapSpecific"]}

summon interaction -1990 38 -1976 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
#summon interaction -1990 46 -1968 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1991 35 -1948 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2005 35 -1974 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Saac Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction -2000 36 -1965 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -1996 39 -1976 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
#execute if entity @a[tag=vendingMachine] run summon interaction -1995 47 -1975 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -2007 41 -1979 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand -2000 36 -1965 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -1996 39 -1976 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
#execute if entity @a[tag=vendingMachine] run summon armor_stand -1995 47 -1975 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -2007 41 -1979 {Rotation:[-180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=shLock] run summon interaction -2000 48 -1970 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=shLock] run summon interaction -2000 48 -1970 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}