tellraw @a [{text:"The ",bold:false,color:gray},{text:"Cliffside Asylum ",bold:true,color:"#81d6c1"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleport#
tp @a[scores={team=1}] 5003 5 -5043 180 0
tp @a[scores={team=2}] 4997 5 -5083 90 0
#tp @a[scores={spawnpoint=5..6}] 5010 5 -5058 90 0
#tp @a[scores={spawnpoint=7..}] 4996 5 -5035 -90 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker 5003 5 -5043 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 4997 5 -5083 {Tags:["spawnPoint","team2","mapSpecific"]}
#summon marker 5010 5 -5058 {Tags:["spawnPoint","team2","mapSpecific"]}
#summon marker 4996 5 -5035 {Tags:["spawnPoint","team2","mapSpecific"]}

#4997 5 -5083

#Vents#
summon marker 5009 5 -5035 {Tags:["vent","mapSpecific"]}
summon marker 5000 15 -5055 {Tags:["vent","mapSpecific"]}
summon marker 4998 5 -5092 {Tags:["vent","mapSpecific"]}
summon marker 4997 5 -5051 {Tags:["vent","mapSpecific"]}

summon interaction 5010 4 -5035 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 4999 14 -5056 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 4997 4 -5093 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 4996 4 -5051 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#4999 14 -5056
#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 5005 5 -5015 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned 5005 5 -5054 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 5008 5 -5090 run function du-in:ingame/vending_machine/place/north

#execute unless entity @a[tag=partyLeader,tag=cliffLock] run summon interaction 4996 6 -5012 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
#execute if entity @a[tag=partyLeader,tag=cliffLock] run summon interaction 4996 6 -5012 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
weather rain 40d

summon marker 5012 10 -5093 {Tags:["ctfFlag","blueFlag","gameObject","mapSpecific"]}
summon marker 5003 5 -5019 {Tags:["ctfFlag","redFlag","gameObject","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#5012 10 -5093 Bleu Flag blue
#5003 5 -5019 Rouge Flag red