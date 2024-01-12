#execute if score #main kitCountdown matches 3 run function du-in:lobby/mapselect/fromkit1
#function du-in:lobby/mapselect/fromkit1
#function du-in:lobby/mapselect/fromkit2
#function du-in:lobby/mapselect/fromkit3

#function du-in:lobby/mapselect/switch
#tp @s[tag=!spectator,tag=!teamMode] 232 91 36 180 0
tp @s[tag=!spectator,tag=!working] 232 91 36 180 0
#kill @e[tag=displayItem]
#function du-in:lobby/mapselect/switch
#tag @s remove mystery
execute as @a run function du-in:music/lobby/stop/kitselect
#execute if entity @s[tag=teamMode] run tp @s[tag=teamMode,tag=!spectator] 512 5 528 0 0
bossbar set minecraft:kit_countdown visible false
scoreboard players set #main kitOnline 0
tag @s remove ready
team leave @s[team=Ready]

scoreboard players set #main mapCountdown 300
function du-in:lobby/item_reset
clear @s
#execute unless entity @a[tag=teamMode] run bossbar set minecraft:map_countdown visible true
#execute unless entity @a[tag=teamMode] run bossbar set minecraft:map_countdown visible true
bossbar set minecraft:map_countdown visible true
#bossbar set minecraft:map_countdown visible true

playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5
scoreboard players set @s kitTheme 1
scoreboard players set @s kitList 7
tag @s add kitMenu

#scoreboard players set @s lobby 3
#scoreboard players set #main lobby 3

scoreboard players set @s lobby 2
scoreboard players set #main lobby 2

title @a times 0 60 0
title @s title {"text":"","color":"red","bold":true}
title @s[tag=!teamMode] subtitle {"text":"Open inventory to select a character!","color":"red","bold":true}
title @s[tag=teamMode] subtitle {"text":"Pick a team and open inventory to select a character!","color":"red","bold":true}
