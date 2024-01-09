function du-in:ingame/void/ambience

execute if entity @s[distance=..150,y=20,dy=-5,tag=!working] run function du-in:ingame/void/platform_return

execute if entity @s[scores={Lives=..0},tag=!voidOut] run function du-in:ingame/void/void_out