scoreboard players set @s kitTheme 1
#execute store result score @s kitList run data get storage du-in:groups group.minecraft
tag @s add kitMenu

tag @s add menuRefresh

#execute store result storage du-in:temp theme_index int 1 run scoreboard players get @s kitTheme
#function du-in:lobby/kitmenu/menu/load_group with storage du-in:temp
