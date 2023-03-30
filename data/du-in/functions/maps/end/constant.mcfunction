effect give @a[tag=!win,tag=!lose] minecraft:night_vision infinite 100 true

#Kill barrier
#execute positioned -365 2 222 as @a[distance=..20,tag=!working] at @s if entity @s[y=4,dy=0] run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 200 1.3
execute positioned -365 2 222 as @a[distance=..30] at @s if entity @s[y=6,dy=0] run kill @s[tag=!working,tag=!not]