#Restart music
stopsound @s record
scoreboard players set @s music 0

#Get lobby score from main
execute store result score @s lobby run scoreboard players get #main lobby

#If lobby is 0 or more, add the tag lobby
execute if score #main lobby matches 0.. run tag @s add lobby
function du-in:lobby/reset/item
clear @s

#Remove gamemode select sub-lobbies if not in gamemode select
execute unless entity @s[scores={lobby=1}] run tag @s remove shop
execute unless entity @s[scores={lobby=1}] run tag @s remove gameSettings
execute unless entity @s[scores={lobby=1}] run tag @s remove parkour
execute unless entity @s[scores={lobby=1}] run tag @s remove credits
execute unless entity @s[scores={lobby=1}] run tag @s remove subLobby

execute unless entity @s[scores={lobby=2}] run tag @s remove cl
execute unless entity @s[scores={lobby=2}] run tag @s remove dml
execute unless entity @s[scores={lobby=2}] run tag @s remove kothl
execute unless entity @s[scores={lobby=2}] run tag @s remove ctfl
execute unless entity @s[scores={lobby=2}] run tag @s remove cql
execute unless entity @s[scores={lobby=2}] run tag @s remove cmap
execute unless entity @s[scores={lobby=2}] run tag @s remove kitMenu

#Hide map countdown bossbar if not in map select
execute unless entity @a[scores={lobby=2},tag=partyLeader] run bossbar set minecraft:map_countdown visible false