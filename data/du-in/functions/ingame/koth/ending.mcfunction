tag @s add win
execute as @a if score @s kothTimer < #main kothCap run tag @s add lose
tag @a[tag=spectating] add lose