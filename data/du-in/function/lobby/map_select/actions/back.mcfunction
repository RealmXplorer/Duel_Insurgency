#This function returns players to Gamemode select from map select.

#Reset map vote to reset vote displays
scoreboard players reset @a mapVote
execute as @e[type=marker,tag=mapVote] at @s run setblock ~ ~-1 ~ minecraft:red_concrete destroy

#Kill map displays
kill @e[tag=displayItem]

#Reset Gamemode Displays
kill @e[type=text_display,tag=gamemodeLabel]
summon text_display -983 16 517 {Tags:["gamemodeLabel"],billboard:"center"}
function du-in:lobby/theme/default/text

#Stop music
stopsound @a record

#Reset kit values
execute as @a run function du-in:storage/reset
scoreboard players set @a kit 0
tag @a remove kitPicked
#tag @a remove spect
tag @a remove spectating
tag @a remove audience

tag @a[tag=ctfl] remove teamMode
tag @a[tag=cql] remove teamMode

#Join lobby team
team join lobby @a

#Reset all item tagsd
execute as @a run function du-in:lobby/reset/item

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

#Remove Kit tags
tag @a remove saac
tag @a remove sus
tag @a remove drip
tag @a remove caveSpider
tag @a remove lorde
tag @a remove maskless
tag @a remove vendingMachine

#Removes stopped countdown tag
tag @a remove countStop

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
scoreboard players set @a kitList 8


#Remove tags
tag @a remove sus
#Sets title
title @a times 0 60 0
title @a title {text:"",color:red,bold:true}
title @a subtitle {text:"Open inventory for more options!",color:red,bold:true}
title @a actionbar {text:"Open inventory for more options!",color:red,bold:true}
function du-in:lobby/scheduled/gamemode_select
execute at @a[tag=partyLeader] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5
