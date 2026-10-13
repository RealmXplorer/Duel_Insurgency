tellraw @a [{text:"The ",bold:false,color:gray},{text:"Harvest Arena ",bold:true,color:"#d96218"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 1286 9 1286 135 0
tp @a[scores={spawnpoint=3..4}] 1286 9 1264 45 0
tp @a[scores={spawnpoint=5..6}] 1264 9 1264 -45 0
tp @a[scores={spawnpoint=7..}] 1264 9 1286 -135 0

function du-in:ingame/startround/timer/start_timer

#Thanksgiving Spawnpoints#
summon marker 1286 9 1286 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 1286 9 1264 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 1264 9 1264 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 1264 9 1286 {Tags:["spawnPoint","team2","mapSpecific"]}

#Thanksgiving Vents#
execute if entity @a[tag=sus] run summon marker 1288 9 1284 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 1272 9 1259 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 1273 8 1273 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 1260 9 1281 {Tags:["vent","mapSpecific"]}

summon interaction 1259 8 1281 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 1272 8 1258 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 1289 8 1285 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 1272 7 1272 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Thanksgiving Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 1258 9 1275 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 1275 9 1292 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned 1292 9 1275 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 1275 9 1258 run function du-in:ingame/vending_machine/place/south