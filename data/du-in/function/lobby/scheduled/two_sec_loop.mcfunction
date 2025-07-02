#Display Ash on voidLocked maps.d
execute if entity @a[scores={lobby=2}] if score #main pylonsDestroyed matches 1.. run at @e[type=marker,tag=voidLocked] run particle minecraft:ash ~ ~0.5 ~ 0.25 0 0.25 0 25 force

#Loop function
schedule function du-in:lobby/scheduled/two_sec_loop 2s