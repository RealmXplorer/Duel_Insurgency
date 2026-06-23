tellraw @a [{text:"The ",bold:false,color:gray},{text:"Dust 2 ",bold:true,color:"#f7db92"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleport#
tp @a[scores={spawnpoint=0..2}] 15035 18 995 65 15
tp @a[scores={spawnpoint=3..4}] 15023 15 1020 3 -21
tp @a[scores={spawnpoint=5..6}] 15022 13 1030 -140 5
tp @a[scores={spawnpoint=7..}] 15049 16 1034 155 3

function du-in:ingame/startround/timer/start_timer

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

summon interaction 15040 17 1003 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 15033 14 999 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 15027 14 1021 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 15011 11 1007 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 15052 15 1030 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned 15050 16 1011 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 15026 15 993 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned 15009 15 1021 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 15036 13 1018 run function du-in:ingame/vending_machine/place/south

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=d2Lock] run summon interaction 15022 16 1018 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=d2Lock] run summon interaction 15022 16 1018 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}