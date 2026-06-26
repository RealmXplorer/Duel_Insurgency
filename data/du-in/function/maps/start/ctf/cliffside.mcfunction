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

#/setblock ~ ~1 ~ lectern[has_book=true]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"ENTRY 4",author:"me",pages:[{"text":"ENTRY 4\nA MINOR MISCALCULATION\n\nMY PARTICIPANTS\nTHEIR WILL\n\nTHEY DESTROYED MY WORK\n\nLESSON LEARNED\n\nFREE WILL IS FAR TOO\nDANGEROUS A VARIABLE\n"},{"text":"TYRANTS AND TIMEKEEPERS AROSE\n\nIT MADE FOR A FASCINATING OUTCOME, \n\nBUT IT WAS NOT THE EXPERIMENT I SO DESPERATELY SOUGHT\n\nTHEY CLOSED MY NEXUS\nI MUST AMEND\nPROTOCOL\n"},{"text":"THIS NEXT EXPERIMENT\nWILL BE\nVERY\nVERY\nINTERESTING\n\nTHE VAGRANT SOULS\n\nTHEIR WARPED FORMS\nHAVE CREATED\nSPECIALIZATIONS\n\nTHIS WILL BENEFIT ME\nGREATLY\n"},{"text":"THE EARS CAN LISTEN ACROSS REALITY\nMY HEARING\nRESTORED\n\nTHE EYES\nOBSERVERS\nMY SIGHT\nRENEWED\n\nTHE MOUTHS\nWHISPERERS\nMY MOUTH\nUNFURLED\n"},{"text":"CONFLICT WILL BE\nTHE ONLY ACTION\n\nSUBJECTS WILLING\nPARTICIPANTS\n\nENDLESS CONFLICT\n\nI SHALL OBSERVE\nI SHALL LISTEN\nI SHALL FINALLY HAVE\n\nMY EXPERIMENT\n"},{"text":"you have found the fourth entry.\n\nthe first is contained upon the stage of a harvest festival.\n\nthe fifth and final entry can be found in the city streets of san ricardo.\n"}]}}}} replace
