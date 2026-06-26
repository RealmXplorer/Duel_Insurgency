tellraw @a [{text:"The ",bold:false,color:gray},{text:"End ",bold:true,color:"#aa77d9"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..4}] -387 16 246 -145 0
tp @a[scores={spawnpoint=5..}] -345 16 201 45 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints
summon marker -387 16 246 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -345 16 201 {Tags:["spawnPoint","team2","mapSpecific"]}

#Hill point
summon interaction -365.5 20.75 222.5 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned -366 17 215 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned -366 17 229 run function du-in:ingame/vending_machine/place/south

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=endLock] run summon interaction -361 18 217 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=endLock] run summon interaction -361 18 217 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}


execute unless entity @a[scores={kit=10}] run setblock -355 12 223 lectern[has_book=true,facing=south]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"ENTRY 3",author:"me",pages:[{"text":"ENTRY 3\n\nI WILL ATTEMPT TO MERGE TWO OF THESE REALITIES\n\nPERHAPS THEIR INTERSECTION COULD GIVE ME SOME NEW\n\nEXPERIMENTS AND\nPERHAPS\nENTERTAINMENT?\n"},{"text":"SUCCESS\nI HAVE TIED\nTWO REALITIES TOGETHER\n\nEVERYTHING IS STABLE\n\nWHAT IS THIS?\n\nSITUATION CRITICAL\n\nSOMETHING IS \nWRONG\n"},{"text":"THE REALITIES HAVE \nCAVED IN \n\nON THEMSELVES\n\nTHERE ARE BEINGS \n\nLOST IN THE ASHES\nOF THIS MELDED TIMELINE\n\nGRAY HOLLOW HUSKS\n"},{"text":"A NEW \nTHEORY\n\nREALITY WAS NOT MEANT\n\nFOR THIS INTERACTION\n\nI WILL CONSTRUCT\nA NEXUS\nTO HOUSE MY EXPERIMENTS\n\nBUT HOW?\n"},{"text":"THE GRAY SOULS\n\nIN MY PITY\nI ACCEPTED THEM\n\nTHEY HAVE CONSTRUCTED\n\nA WONDERFUL\nDEVICE\n\nTHE PYLONS\n\nTO HOUSE THE TETHERS\n"},{"text":"you have found the third entry.\n\nthe first is contained upon the stage of a harvest festival.\n\nthe fourth can be located in the ruins of an asylum.\n"}]}}}} replace
execute if entity @a[scores={kit=10}] run setblock -355 12 223 air