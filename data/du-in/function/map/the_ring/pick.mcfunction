tag @r[gamemode=adventure,tag=!lastInRing] add inRing
tag @a remove lastInRing

tag @a[tag=inRing,tag=!ring1,tag=!ring2] add notPickedRing

scoreboard players reset #main inRing
execute as @a[tag=inRing,tag=playing] run scoreboard players add #main inRing 1

scoreboard players set #main ringTally 2