execute if entity @a[tag=playing,distance=..7,scores={kit=1000..1001}] run data modify entity @s Glowing set value 1b
execute unless entity @a[tag=playing,distance=..7,scores={kit=1000..1001}] run team leave @s
execute unless entity @a[tag=playing,distance=..7,scores={kit=1000..1001}] run data remove entity @s Glowing
###