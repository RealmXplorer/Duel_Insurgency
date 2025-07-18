tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Crait ",bold:true,color:"#f75454"},{text:"map has been chosen!",bold:false,color:gray}]

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
summon interaction 10049 5 5102 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction 10036 5 5056 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction 10031 5 5008 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon armor_stand 10049 5 5102 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
summon armor_stand 10036 5 5056 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
summon armor_stand 10031 5 5008 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

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