execute as @a[tag=!ambOff] at @s run function du-in:map/hive/ambience

#Re-loop
execute if entity @a[tag=playing,tag=!void] run schedule function du-in:map/hive/constant 5t