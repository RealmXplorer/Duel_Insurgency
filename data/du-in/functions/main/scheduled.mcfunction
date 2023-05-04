#say success

# Stop Music and Ambient sounds #
    stopsound @a music
    stopsound @a ambient minecraft:ambient.cave
        
#   Give all players saturation #
    effect give @a[predicate=!du-in:effect/has_saturation,tag=!notEaten] minecraft:saturation infinite 100 true


schedule function du-in:main/scheduled 1s