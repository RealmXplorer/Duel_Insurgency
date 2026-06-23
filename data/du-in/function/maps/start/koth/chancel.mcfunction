tellraw @a [{text:"The ",bold:false,color:gray},{text:"Chancel ",bold:true,color:"#bdc9be"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 342 31 -3284 0 0
tp @a[scores={spawnpoint=3..4}] 309 31 -3251 -90 0
tp @a[scores={spawnpoint=5..6}] 375 31 -3252 90 0
tp @a[scores={spawnpoint=7..}] 341 31 -3219 -180 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints
summon marker 342 31 -3284 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 309 31 -3251 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 375 31 -3252 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 341 31 -3219 {Tags:["spawnPoint","team2","mapSpecific"]}

#Capture point
summon interaction 342.026 31 -3250.95 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines
execute if entity @a[tag=vendingMachine] positioned 339 31 -3284 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 374 31 -3254 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned 344 31 -3219 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 309 31 -3249 run function du-in:ingame/vending_machine/place/north

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=chancelLock] run summon interaction 338 33 -3221 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=chancelLock] run summon interaction 338 33 -3221 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
