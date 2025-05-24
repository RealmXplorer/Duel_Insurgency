scoreboard players reset #main inRing
execute as @a[tag=inRing,tag=playing] run scoreboard players add #main inRing 1

execute if score #main inRing <= 1 inRing run function du-in:maps/the_ring/pick

execute if score #main ringTally matches 1.. run function du-in:maps/the_ring/sides