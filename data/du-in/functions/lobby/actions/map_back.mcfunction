#This function returns players to Gamemode select from map select.

#Reset map vote to reset vote displays
scoreboard players reset @a mapVote
execute as @e[type=marker,tag=mapVote] at @s run setblock ~ ~-1 ~ minecraft:red_concrete destroy

#Kill map displays
kill @e[tag=displayItem]

#Reset Gamemode Displays
kill @e[type=area_effect_cloud,tag=gamemodeLabel]
summon area_effect_cloud -983 16 517 {Duration:2147483647,Tags:["gamemodeLabel"],CustomNameVisible:1b}
function du-in:lobby/display/default/text

#Stop music
stopsound @a record

#Reset kit values
scoreboard players set @a kit 0
tag @a remove kitPicked
tag @a remove spect

tag @a[tag=ctfl] remove teamMode
tag @a[tag=cql] remove teamMode

#Join lobby team
team join lobby @a

#Reset all item tagsd
execute as @a run function du-in:lobby/item_reset

#Teleport players
tp @a -999 13 517 -90 0

#Resets readied player count
scoreboard players set #main kitOnline 0

#Resets gamemode-specific lobbies and tags
tag @a remove cl
tag @a remove dml
tag @a remove kothl
tag @a remove ctfl
tag @a remove cql
tag @a remove cmap
tag @a remove ready
scoreboard players reset #gamemode gamemode

#Removes stopped countdown tag
tag @a remove countStop

#Removes random map vote tag
#tag @a remove voteRandom

#Clears inventories of players
clear @a

#Set personal and global lobby score to 1
scoreboard players set #main lobby 1
scoreboard players set @a lobby 1

#Reset map countdown and hide bossbar
scoreboard players set #main mapCountdown 300
bossbar set minecraft:map_countdown visible false

#Resets team specific tags and scores
tag @a remove team1
tag @a remove team2
scoreboard players reset @a team

#Set music to 0 (starts gamemode select music)
scoreboard players set @a music 0

#Resets map score
scoreboard players reset #main map

#Removes kitMenu and resets it
tag @a remove kitMenu
scoreboard players set @a kitTheme 1
scoreboard players set @a kitList 7


#Remove tags
tag @a remove sus
#Sets title
title @a times 0 60 0
title @a title {"text":"","color":"red","bold":true}
title @a subtitle {"text":"Open inventory for more options!","color":"red","bold":true}
title @a actionbar {"text":"Open inventory for more options!","color":"red","bold":true}
function du-in:lobby/scheduled/gamemode_select
execute at @a run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5
