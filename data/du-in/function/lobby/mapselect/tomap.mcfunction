

tp @s[tag=!spectator] 232 91 36 180 0
execute as @a run function du-in:music/lobby/stop/kitselect
bossbar set minecraft:kit_countdown visible false
scoreboard players set #main kitOnline 0
tag @s remove ready
team leave @s[team=Ready]

scoreboard players set #main mapCountdown 300
function du-in:lobby/item_reset
clear @s

bossbar set minecraft:map_countdown visible true


playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5
function du-in:lobby/kitmenu/init


scoreboard players set @s lobby 2
scoreboard players set #main lobby 2

title @a times 0 60 0
title @s title {text:"",color:red,bold:true}
title @s[tag=!teamMode] subtitle {text:"Open inventory to select a character!",color:red,bold:true}
title @s[tag=teamMode] subtitle {text:"Pick a team and open inventory to select a character!",color:red,bold:true}
