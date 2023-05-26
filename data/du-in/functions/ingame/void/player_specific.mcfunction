
#execute if entity @s[tag=!musicOff] if score #main pylonsDestroyed matches 1..2 run function du-in:music/void/corruption
#execute if entity @s[tag=!musicOff] if score #main pylonsDestroyed matches 3 run function du-in:music/void/vain_pursuit

function du-in:ingame/void/ambience

execute at @s if entity @s[distance=..100,y=20,dy=0,tag=!working] run function du-in:ingame/void/platform_return

execute if entity @s[scores={Lives=..0},tag=!voidOut] run function du-in:ingame/void/void_out