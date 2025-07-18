tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"San Ricardo ",bold:true,color:"#fceaa2"},{text:"map has been chosen!",bold:false,color:gray}]

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
summon interaction -3732 59 1274 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -3763 57 1254 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -3714 62 1251 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon armor_stand -3732 59 1274 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
summon armor_stand -3763 57 1254 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
summon armor_stand -3714 62 1251 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Vents
summon interaction -3714 61 1252 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -3733 58 1274 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -3762 56 1254 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

summon marker -3715 62 1252 {Tags:["vent","mapSpecific"]}
summon marker -3734 59 1273 {Tags:["vent","mapSpecific"]}
summon marker -3762 57 1255 {Tags:["vent","mapSpecific"]}

function du-in:ingame/conquest/reset_points