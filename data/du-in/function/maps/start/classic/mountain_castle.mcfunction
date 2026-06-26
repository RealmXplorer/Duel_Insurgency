tellraw @a [{text:"The ",bold:false,color:gray},{text:"Mountain Castle ",bold:true,color:"#b5b1aa"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleport#
tp @a[scores={spawnpoint=0..2}] -13 11 29 -135 1
tp @a[scores={spawnpoint=3..4}] 10 11 2 -13 1
tp @a[scores={spawnpoint=5..6}] -15 5 -15 -44 -20
tp @a[scores={spawnpoint=7..}] 15 19 4 -1 1

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker -13 11 29 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 10 11 2 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -15 5 -15 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 15 19 4 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
#NO VENTS#
execute if entity @a[tag=sus] run summon marker 18 17 25 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2 11 24 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 23 11 18 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 29 12 -7 {Tags:["vent","mapSpecific"]}

summon interaction 18 16 26 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 3 10 25 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 24 10 18 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 29 11 -8 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}


#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 13 19 7 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 14 11 7 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 3 9 -10 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned -7 11 27 run function du-in:ingame/vending_machine/place/west

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=mcLock] run summon interaction 25 20 17 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=mcLock] run summon interaction 25 20 17 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}

#Lore book
execute unless entity @a[scores={kit=10}] run setblock 24 19 4 lectern[has_book=true,facing=south]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"ENTRY 2",author:"me",pages:[{"text":"ENTRY 2\n\nBREAKTHROUGH\n\nI SEE A LIGHT\n\nFAINT YET GLIMMERING\n\nI WILL CRAWL TO IT\n\nPERHAPS\n\nTOWARDS FREEDOM\n"},{"text":"AS I APPROACH, \nI SEE THE LIGHT'S TRUE NATURE\n\nIT IS ITSELF A WEB\n\nCOUNTLESS REALITIES\n\nCOUNTLESS PEOPLE\n\nCOUNTLESS LIVES\n\nALL MOVING\n"},{"text":"I VIEW THESE REALITIES \nWITH SUCH CLARITY\n\nI MUST WONDER\n\nWHAT WOULD AN\n\nINTERSECTION WITH \nTHESE LINES CREATE?\n\nCOULD I\n\nCREATE MY OWN?\n"},{"text":"EXPERIMENT 1:\n\nI HAVE DISCOVERED \n\nA FLAW\n\nIN MY THINKING\n\nHOW CAN ONE CREATE\n\nTHAT WHICH DOES NOT\n\nEXIST?\n"},{"text":"IT IS CLEAR TO ME \n\nTHESE REALITIES HAVE BEEN CAREFULLY\nCONSTRUCTED\n\nBY A HIGHER POWER\n\nI SIMPLY DO NOT HAVE THE POWER \nTO WIELD CREATION\n\nI WILL FIND A WAY\nI MUST\n"},{"text":"you have found the second entry.\n\nthe first is contained upon a stage in a harvest festival.\n\nthe third can be found in the end, away from the highest point.\n"}]}}}} replace
execute if entity @a[scores={kit=10}] run setblock 24 19 4 air replace