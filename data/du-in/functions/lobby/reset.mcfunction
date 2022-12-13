stopsound @s record
execute store result score @s lobby run scoreboard players get #main lobby
execute if score #main lobby matches 0.. run tag @s add lobby
function du-in:lobby/item_reset
clear @s
scoreboard players set @s music 0
execute unless entity @s[scores={lobby=1}] run tag @s remove shop
execute unless entity @s[scores={lobby=1}] run tag @s remove parkour
execute unless entity @s[scores={lobby=1}] run tag @s remove credits

execute unless entity @s[scores={lobby=3}] run tag @s remove cl
execute unless entity @s[scores={lobby=3}] run tag @s remove dml
execute unless entity @s[scores={lobby=3}] run tag @s remove kothl
execute unless entity @s[scores={lobby=3}] run tag @s remove ctfl
execute unless entity @s[scores={lobby=3}] run tag @s remove cql
#execute unless entity @s[scores={lobby=3}] run tag @s remove exl
execute unless entity @s[scores={lobby=3}] run tag @s remove cmap
execute unless entity @s[scores={lobby=3}] run tag @s remove kitMenu

execute unless entity @a[scores={lobby=3},tag=partyLeader] run bossbar set minecraft:map_countdown visible false