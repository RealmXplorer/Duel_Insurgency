execute as @a[gamemode=adventure] at @s if entity @s[distance=..100,y=5,dy=-2] run kill @s

execute if entity @a[tag=playing,tag=!void] run schedule function du-in:map/wishing_star/constant 1t