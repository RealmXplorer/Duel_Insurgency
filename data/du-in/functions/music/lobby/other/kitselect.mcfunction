#KIT SELECT#
scoreboard players set @s[scores={music=640..}] music 0
execute if score #main theme matches 1 unless score #main themeTimer matches 1.. run playsound minecraft:minecraft.pick record @s[scores={music=1},tag=!musicOff,tag=!startgame] ~ ~ ~ 1000000 1 1
execute if score #main theme matches 2 unless score #main themeTimer matches 1.. run playsound minecraft:undertale.pick record @s[scores={music=1},tag=!musicOff,tag=!startgame] ~ ~ ~ 1000000 1 1
execute if score #main theme matches 3 unless score #main themeTimer matches 1.. run playsound minecraft:starwars.pick record @s[scores={music=1},tag=!musicOff,tag=!startgame] ~ ~ ~ 1000000 1 1
execute if score #main theme matches 4 unless score #main themeTimer matches 1.. run playsound minecraft:zootopia.pick record @s[scores={music=1},tag=!musicOff,tag=!startgame] ~ ~ ~ 1000000 1 1

execute if entity @s[tag=working] run function du-in:music/lobby/stop/kitselect

execute unless score #main themeTimer matches 0 unless score #main theme matches 1 run stopsound @s record minecraft:minecraft.pick
execute unless score #main themeTimer matches 0 unless score #main theme matches 2 run stopsound @s record minecraft:undertale.pick
execute unless score #main themeTimer matches 0 unless score #main theme matches 3 run stopsound @s record minecraft:starwars.pick
execute unless score #main themeTimer matches 0 unless score #main theme matches 4 run stopsound @s record minecraft:zootopia.pick

bossbar set minecraft:kit_countdown players @a