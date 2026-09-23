execute as @a[tag=!ingame,scores={FRIEND=2..}] run tag @s add ingame
execute as @a[tag=ingame] unless entity @a[scores={FRIEND=2..}] run scoreboard players set @s FRIEND 2


execute if entity @a[scores={LEVEL_OF_FUN=8..}] run scoreboard players set #main FRIEND 0
execute as @a[tag=ingame,scores={LEVEL_OF_FUN=8..,kit=0..}] store result score #main FRIEND run return run function du-in:lobby/team_select/item/sort

execute if score #main FRIEND matches 0 run function du-in:other/challenge/fail