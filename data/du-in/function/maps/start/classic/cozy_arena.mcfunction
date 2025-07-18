tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Cozy Arena ",bold:true,color:"#a1763b"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] -965 9 1037 135 0
tp @a[scores={spawnpoint=3..4}] -965 9 1015 45 0
tp @a[scores={spawnpoint=5..6}] -987 9 1015 -45 0
tp @a[scores={spawnpoint=7..}] -987 9 1037 -135 0

function du-in:ingame/startround/timer/start_timer

weather rain 100000

#Christmas Spawnpoints#
summon marker -965 9 1037 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -965 9 1015 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -987 9 1015 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -987 9 1037 {Tags:["spawnPoint","team2","mapSpecific"]}

#Christmas Vents#
execute if entity @a[tag=sus] run summon marker -979 8 1010 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -978 8 1024 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -991 9 1032 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -963 9 1035 {Tags:["vent","mapSpecific"]}

summon interaction -962 8 1036 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -992 8 1032 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -979 7 1023 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -979 8 1009 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Christmas Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction -976 9 1009 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -959 9 1026 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -976 9 1043 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -993 9 1026 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand -976 9 1009 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -959 9 1026 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -976 9 1043 {Rotation:[-180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -993 9 1026 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
