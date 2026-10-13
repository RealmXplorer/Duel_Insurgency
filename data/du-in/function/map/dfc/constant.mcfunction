execute as @a[tag=audience] at @s run function du-in:map/dfc/audience

execute if entity @a[tag=playing,tag=!void] run schedule function du-in:map/dfc/constant 1t