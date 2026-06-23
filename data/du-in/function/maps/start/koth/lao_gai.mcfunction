tellraw @a [{text:"The ",bold:false,color:gray},{text:"Lake Lao Gai ",bold:true,color:"#aff3d9"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 4976 68 -2295 -60 0
tp @a[scores={spawnpoint=3..4}] 4976 68 -2277 -118 0
tp @a[scores={spawnpoint=5..6}] 5004 68 -2277 118 0
tp @a[scores={spawnpoint=7..}] 5004 68 -2295 60 0

function du-in:ingame/startround/timer/start_timer

summon marker 4976 68 -2295 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 4976 68 -2277 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 5004 68 -2277 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 5004 68 -2295 {Tags:["spawnPoint","team2","mapSpecific"]}

summon interaction 4990 61 -2286 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 4992 61 -2297 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned 4975 68 -2286 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 5005 68 -2286 run function du-in:ingame/vending_machine/place/west

#Lock
execute unless entity @a[tag=partyLeader,tag=lgLock] run summon interaction 4991 59 -2293 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=lgLock] run summon interaction 4991 59 -2293 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}