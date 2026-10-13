effect give @a[tag=playing,tag=!lobby,predicate=!du-in:effect/has_night_vision,tag=!freddyDark] minecraft:night_vision infinite 100 true
execute as @a[gamemode=adventure] at @s if entity @s[distance=..100,y=6,dy=0] run kill @s

execute if entity @a[tag=playing,tag=!void] run schedule function du-in:map/the_end/constant 5t