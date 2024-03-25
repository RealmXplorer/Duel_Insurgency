#Display Ash on voidLocked maps.
execute if entity @a[scores={lobby=2}] if score #main pylonsDestroyed matches 1.. run function du-in:lobby/scheduled/map_select

schedule function du-in:lobby/scheduled/two_sec_loop 2s