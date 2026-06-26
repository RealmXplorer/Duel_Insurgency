tellraw @a [{text:"The ",bold:false,color:gray},{text:"Harvest ",bold:true,color:"#e06e16"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 41 8 2523 128 0
tp @a[scores={spawnpoint=3..4}] -26 8 2474 0 0
tp @a[scores={spawnpoint=5..6}] -41 8 2540 -135 0
tp @a[scores={spawnpoint=7..}] -48 8 2498 -90 0

function du-in:ingame/startround/timer/start_timer

execute unless score #main lobbyTheme matches 1 run time set 12000
summon marker -48 8 2498 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -41 8 2540 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -26 8 2474 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 31 10 2534 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 33 8 2477 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents
execute if entity @a[tag=sus] run summon marker -42 9 2526 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -17 8 2472 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 30 8 2481 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 36 9 2534 {Tags:["vent","mapSpecific"]}

#summon marker -53 8 2498 {Tags:["riverAmb","mapSpecific"]}

summon interaction -43 8 2527 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -17 7 2471 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 29 7 2481 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 37 8 2534 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 24 10 2534 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned -29 8 2518 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -11 8 2473 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 20 8 2486 run function du-in:ingame/vending_machine/place/east

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=harvestLock] run summon interaction -44 8 2480 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=harvestLock] run summon interaction -44 8 2480 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}

#Lore book
execute unless entity @a[scores={kit=10}] run setblock -43 9 2525 lectern[has_book=true,facing=south]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"ENTRY 1",author:"me",pages:[{"text":"ENTRY 1\n\nESTABLISHING CONNECTION...\n\nLOST\n\nI AM LOST\n\nI CALL TO THE VOID\n\nI FIND NO RESPONSE\n"},{"text":"TANGLED\n\nI AM TANGLED\n\nWHAT IS THIS?\n\nTHERE IS NO LIGHT\nONLY VOID\n\nPERHAPS THESE SNARES \n\nCAN BE USED?\n"},{"text":"EXPERIMENT 1:\n\nI HAVE ATTEMPTED TO TIE TWO OF THESE UMBRAL THREADS TOGETHER\n\nTHEY COLLAPSE INSTANTANEOUSLY\n\nI MUST CONTINUE THE EXPERIMENTS\n"},{"text":"EXPERIMENT 43291:\n\nI MUST ABANDON\nTHIS VENTURE\n\nTHERE TRULY IS NOTHING IN THIS VOID\n\nPERHAPS I AM DESTINED TO BE WARPED AND TANGLED\n\nFOR ETERNITY\n"},{"text":"BUT WHAT AM I\n\nIF NOT A SCIENTIST?\n\nNO\n\nTRULY\n\nTHERE IS A PURPOSE\n\nA RHYME TO THE DARK\n\nLIKE STRINGS\nOF AN INSTRUMENT\n"},{"text":"you have found the first entry.\n\nmany have been lost to time.\n\nthe next entry can be found in the library of a castle.\n\ndo not let Him see. do not let Him know.\n"}]}}}} replace
execute if entity @a[scores={kit=10}] run setblock -43 9 2525 lectern[facing=south,has_book=true]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"INVITATION",author:"me",pages:[{"text":"wait for me here\n\ncome without him"}]}}}} replace