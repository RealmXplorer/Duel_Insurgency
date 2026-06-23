tellraw @a [{text:"The ",bold:false,color:gray},{text:"Ziggurat ",bold:true,color:"#f5f0eb"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 233 6 -1882 -135 -13
tp @a[scores={spawnpoint=3..4}] 233 6 -1925 -45 -15
tp @a[scores={spawnpoint=5..6}] 276 6 -1925 45 -15
tp @a[scores={spawnpoint=7..}] 276 6 -1882 135 -15

#233 6 -1882
#233 6 -1925
function du-in:ingame/startround/timer/start_timer

summon marker 233 6 -1882 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 233 6 -1925 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 276 6 -1925 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 276 6 -1882 {Tags:["spawnPoint","team2","mapSpecific"]}

summon interaction 255.0 15 -1903.0 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 240 9 -1889 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned 240 9 -1918 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned 269 9 -1918 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 269 9 -1889 run function du-in:ingame/vending_machine/place/west

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=zigLock] run summon interaction 249 6 -1899 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=zigLock] run summon interaction 249 6 -1899 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}