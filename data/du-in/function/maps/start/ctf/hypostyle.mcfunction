tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Hypostyle ",bold:true,color:"#91a8ed"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={team=2}] -820 9 -38 0 0
tp @a[scores={team=1}] -775 9 -20 -180 0

function du-in:ingame/startround/timer/start_timer

summon marker -775 9 -20 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -775 9 -38 {Tags:["spawnPoint","team1","mapSpecific"]}

summon marker -820 9 -38 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -820 9 -20 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker -750 12 -29 {Tags:["ctfFlag","redFlag","gameObject","mapSpecific"]}
summon marker -845 12 -29 {Tags:["ctfFlag","blueFlag","gameObject","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
summon interaction -812 5 -20 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -783 5 -20 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -762 9 -27 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -762 9 -31 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -833 9 -31 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -833 9 -27 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon armor_stand -812 5 -20 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
summon armor_stand -783 5 -20 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
summon armor_stand -762 9 -27 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
summon armor_stand -762 9 -31 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
summon armor_stand -833 9 -31 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
summon armor_stand -833 9 -27 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Vents
summon marker -833 1 -39 {Tags:["vent","mapSpecific"]}
summon marker -809 5 -21 {Tags:["vent","mapSpecific"]}
summon marker -786 5 -20 {Tags:["vent","mapSpecific"]}
summon marker -761 1 -39 {Tags:["vent","mapSpecific"]}

summon interaction -832 1 -40 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -808 4 -20 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -787 4 -20 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -762 1 -40 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#-832 1 -40
#-808 4 -20
#-787 4 -20
#-762 1 -40

#-833 1 -39
#-809 5 -21
#-786 5 -20
#-761 1 -39