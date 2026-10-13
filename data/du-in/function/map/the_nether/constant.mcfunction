effect give @a[tag=playing,tag=!lobby,predicate=!du-in:effect/has_night_vision,tag=!freddyDark] minecraft:night_vision infinite 100 true

execute if entity @a[tag=playing,tag=!void] run schedule function du-in:map/the_nether/constant 10t