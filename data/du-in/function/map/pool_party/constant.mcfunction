effect give @a[tag=playing,tag=!lobby,predicate=!du-in:effect/has_dolphin_grace] minecraft:dolphins_grace infinite 100 true

execute if entity @a[tag=playing,tag=!void] run schedule function du-in:map/pool_party/constant 5t