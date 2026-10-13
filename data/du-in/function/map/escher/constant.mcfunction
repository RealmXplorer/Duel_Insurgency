execute as @a[gamemode=adventure] at @s if entity @e[type=marker,tag=escherDoor,distance=..1] run function du-in:map/escher/teleport

execute if entity @a[tag=playing,tag=!void] run schedule function du-in:map/escher/constant 1t