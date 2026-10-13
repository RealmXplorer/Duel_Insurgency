execute as @a[gamemode=adventure] at @s if entity @s[y=-1,dy=-6] run kill @s

#Re-loop
execute if entity @a[tag=playing,tag=!void] run schedule function du-in:map/ebbot/constant 5t