tellraw @a [{text:"The ",bold:false,color:gray},{text:"Nether ",bold:true,color:"#f05d5d"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] -223 7 56 -90 0
tp @a[scores={spawnpoint=3..4}] -184 7 17 0 0
tp @a[scores={spawnpoint=5..6}] -148 7 55 90 0
tp @a[scores={spawnpoint=7..}] -183 7 92 180 0

function du-in:ingame/startround/timer/start_timer

summon marker -223 7 56 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -184 7 17 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -148 7 55 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -183 7 92 {Tags:["spawnPoint","team1","mapSpecific"]}

summon marker -165 11 34 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -165 9 74 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -207 13 76 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -206 9 33 {Tags:["spawnPoint","team2","mapSpecific"]}

summon interaction -183.0 6.75 56.0 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned -197 7 38 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -167 9 40 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned -169 7 67 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned -201 9 70 run function du-in:ingame/vending_machine/place/north

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=nethLock] run summon interaction -163 17 32 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=nethLock] run summon interaction -163 17 32 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}