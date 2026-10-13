scoreboard players set #easterEggMusic running 1
execute as @a[tag=!legMusicOff] at @s run function du-in:music/ingame/easter_egg

execute if entity @a[tag=!void,tag=playing] run return run schedule function du-in:music/easter_egg_loop 1t
scoreboard players set #easterEggMusic running 0