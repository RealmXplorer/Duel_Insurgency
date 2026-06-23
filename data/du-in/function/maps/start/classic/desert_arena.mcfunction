tellraw @a [{text:"The ",bold:false,color:gray},{text:"Desert Arena ",bold:true,color:yellow},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] -2747 6 -5949 -180 0
tp @a[scores={spawnpoint=3..4}] -2726 6 -5970 90 0
tp @a[scores={spawnpoint=5..6}] -2747 6 -5991 0 0
tp @a[scores={spawnpoint=7..}] -2768 6 -5970 -90 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker -2747 6 -5949 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2726 6 -5970 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2747 6 -5991 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -2768 6 -5970 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker -2762 6 -5984 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2732 6 -5956 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2739 6 -5978 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2758 6 -5959 {Tags:["vent","mapSpecific"]}

summon interaction -2757 5 -5960 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2732 5 -5955 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2738 5 -5979 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2762 5 -5985 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned -2734 6 -5974 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned -2743 6 -5957 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -2760 6 -5966 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned -2751 6 -5983 run function du-in:ingame/vending_machine/place/north

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=daLock] run summon interaction -2743 12 -5964 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=daLock] run summon interaction -2743 12 -5964 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}