tellraw @a [{text:"The ",bold:false,color:gray},{text:"Crait ",bold:true,color:"#f75454"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleports#
tp @a[scores={spawnpoint=0..4,team=1}] 10003 3 5002 0 0
tp @a[scores={spawnpoint=5..,team=1}] 10089 5 5001 0 0
tp @a[scores={spawnpoint=0..4,team=2}] 10002 5 5089 180 0
tp @a[scores={spawnpoint=5..,team=2}] 10081 5 5108 180 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker 10003 3 5002 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 10089 5 5001 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 10002 5 5089 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 10081 5 5108 {Tags:["spawnPoint","team2","mapSpecific"]}

#Points#
summon marker 10045 4 5008 {Tags:["cqPoint","gameObject","mapSpecific"]}
summon marker 10045 4 5053 {Tags:["cqPoint","gameObject","mapSpecific"]}
summon marker 10045 4 5099 {Tags:["cqPoint","gameObject","mapSpecific"]}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 10049 5 5102 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned 10036 5 5056 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 10031 5 5008 run function du-in:ingame/vending_machine/place/east

#Vents
summon interaction 10048 4 5102 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 10036 4 5055 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 10031 4 5007 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

summon marker 10032 5 5006 {Tags:["vent","mapSpecific"]}
summon marker 10037 5 5054 {Tags:["vent","mapSpecific"]}
summon marker 10048 5 5101 {Tags:["vent","mapSpecific"]}

function du-in:ingame/conquest/reset_points

#10048 4 5102
#10036 4 5055
#10031 4 5007

#10032 5 5006
#10037 5 5054
#10048 5 5101