
schedule function du-in:void/start 4s

stopsound @a record
execute at @e[type=interaction,tag=voidLock] run playsound minecraft:goner.enter master @a ~ ~ ~ 1 1
effect give @a[tag=playing] weakness 4 10 true
effect give @a[tag=playing] resistance 4 10 true
effect give @a[tag=playing] fire_resistance 4 10 true
effect give @a[tag=playing] darkness 4 10 true

