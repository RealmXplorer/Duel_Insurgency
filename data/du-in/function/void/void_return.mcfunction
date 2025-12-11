tag @s add playing
tellraw @a {selector:"@s",color:gold,bold:true,"underlined":false,extra:[{text:" returned from the void!",color:light_purple,bold:true,"underlined":false}]}
scoreboard players add Insurgents playerCount 1
scoreboard players set @s Lives 1
tp @s 10045.0 42 10047.0
gamemode adventure @a
tag @a remove spectating
team join Insurgent @a
tag @s remove voidOut
tag @s remove teamDead
tag @s remove teamMode
scoreboard players set #main team 0
tag @s remove grave
effect give @s slowness 2 1 true
