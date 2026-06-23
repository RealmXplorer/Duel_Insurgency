tellraw @a [{text:"The ",bold:false,color:gray},{text:"2Fort ",bold:true,color:gold},{text:"map has been chosen!",bold:false,color:gray}]

#Teleports#
tp @a[scores={team=2,spawnpoint=1..4}] -1030 16 -979 -90 0
tp @a[scores={team=1,spawnpoint=1..4}] -975 16 -1038 90 0
tp @a[scores={team=1,spawnpoint=5..}] -1027 16 -1045 -90 0
tp @a[scores={team=2,spawnpoint=5..}] -979 16 -971 90 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker -975 16 -1038 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1027 16 -1045 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1030 16 -979 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -979 16 -971 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker -1019 6 -1080 {Tags:["ctfFlag","redFlag","gameObject","mapSpecific"]}
summon marker -998 6 -944 {Tags:["ctfFlag","blueFlag","gameObject","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
##Blue Side
execute if entity @a[tag=vendingMachine] positioned -1012 5 -955 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned -1006 16 -972 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned -970 11 -979 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned -1004 10 -991 run function du-in:ingame/vending_machine/place/north

##Red Side
execute if entity @a[tag=vendingMachine] positioned -1003 10 -1028 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -1037 11 -1040 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned -995 5 -1064 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned -1001 16 -1047 run function du-in:ingame/vending_machine/place/east

#Vents
summon interaction -998 15 -1039 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1010 15 -980 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -970 6 -980 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1037 6 -1039 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

summon marker -997 16 -1040 {Tags:["vent","mapSpecific"]}
summon marker -1011 16 -979 {Tags:["vent","mapSpecific"]}
summon marker -971 7 -979 {Tags:["vent","mapSpecific"]}
summon marker -1036 7 -1040 {Tags:["vent","mapSpecific"]}

#-998 15 -1039
#-1010 15 -980
#-970 6 -980
#-1037 6 -1039

#-997 16 -1040
#-1011 16 -979
#-971 7 -979
#-1036 7 -1040
