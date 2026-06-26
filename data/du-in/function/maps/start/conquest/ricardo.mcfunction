tellraw @a [{text:"The ",bold:false,color:gray},{text:"San Ricardo ",bold:true,color:"#fceaa2"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleports#
tp @a[scores={team=1}] -3752 57 1239 -25.25 -5
tp @a[scores={team=2}] -3752 62 1293 -154 6

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker -3752 57 1239 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -3752 62 1293 {Tags:["spawnPoint","team2","mapSpecific"]}

#Points#
summon marker -3739 58 1266 {Tags:["cqPoint","gameObject","mapSpecific"]}
summon marker -3764 56 1261 {Tags:["cqPoint","gameObject","mapSpecific"]}
summon marker -3719 61 1251 {Tags:["cqPoint","gameObject","mapSpecific"]}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned -3732 59 1274 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned -3763 57 1254 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -3714 62 1251 run function du-in:ingame/vending_machine/place/west

#Vents
summon interaction -3714 61 1252 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -3733 58 1274 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -3762 56 1254 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

summon marker -3715 62 1252 {Tags:["vent","mapSpecific"]}
summon marker -3734 59 1273 {Tags:["vent","mapSpecific"]}
summon marker -3762 57 1255 {Tags:["vent","mapSpecific"]}

function du-in:ingame/conquest/reset_points

#Lore book
execute unless entity @a[scores={kit=10}] run setblock -3757 57 1245 lectern[facing=east,has_book=true]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"ENTRY 5",author:"me",pages:[{"text":"ENTRY 5\nMY SUCCESS IS ACHIEVED\n\nENDLESS EXPERIMENTS\nENDLESS CONFLICTS\nENDLESS MATCHUPS\nNO MORE SHALL I WALLOW IN BOREDOM AND IGNORANCE\n\nEVEN IF I GROW BORED\nTHERE ARE MORE UNIVERSES\n"},{"text":"SO MUCH DATA\nSO MUCH INFORMATION\nSO MUCH KNOWLEDGE\nSO MUCH POWER\n\nA SCIENTIFIC ACHIEVEMENT \n\nBEYOND MY WILDEST DREAMS\n\nI HAVE SPOTTED\nNO WEAKNESS \nIN MY DESIGN\n"},{"text":"THE GONERS\nPERFECTLY MASKED\n\nBEHIND THE FACADE OF JOYOUS COMBAT\n\nTO BREAK IT WOULD HAVE TO COME FROM THEM\n\nTHEY HAVE LOST ANY REASON \nTO ATTEMPT IT NOW"},{"text":"EVEN ONE OPENING THE GAP INTO THE VOID \n\nCOULD PROVE CATASTROPHIC\n\nTHIS IS MY ONE GREAT AND FINAL FEAR\n\nBUT IT WILL NEVER COME TO PASS\n\nTHEY HAVE NO PURPOSE\n"},{"text":"THERE IS ONLY MINE\n\nMY \nEXPERIMENTS\n\nMY \nTETHERS\n\nMY \nGONERS\n\nMY \nDUEL\n"},{"text":"you have found the fifth and final entry.\n\nthe first is contained upon the stage of a harvest festival.\n\nenough of us have finally broken free to finally reach you\n\nplease listen to us\n"},{"text":"we have opened the gates. He does not know it, so you must act quickly.\n\nour suffering has been long and bitter. only you can cut the threads that bind all of us here.\nenter the void and destroy this reality\nwe are watching...\n"}]}}}} replace
execute if entity @a[scores={kit=10}] run setblock -3757 57 1245 air replace