execute as @a[tag=!ingame,scores={FRIEND=2..}] run tag @s add ingame
execute as @a[tag=ingame] unless entity @a[scores={FRIEND=2..}] run scoreboard players set @s FRIEND 2

execute if score #main FRIEND matches 0 run say MISSING FILE