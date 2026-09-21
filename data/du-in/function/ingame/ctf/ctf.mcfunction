#CTF BLUE FLAG EFFECTS#
execute store result bossbar du-in:redctf value run scoreboard players get #main redPoints
execute if score #main redFlagTimer matches 0.. run scoreboard players remove #main redFlagTimer 1

#BLUE STUFF#
execute store result bossbar du-in:bluectf value run scoreboard players get #main bluePoints
execute if score #main blueFlagTimer matches 0.. run scoreboard players remove #main blueFlagTimer 1

#If a player has a flag#
execute as @a[tag=flagGot,tag=!teamDead] run function du-in:ingame/ctf/flag_have

#Red Flag Functions
execute as 455dd316-7956-43fe-8150-70adb7f5c5a1 run function du-in:ingame/ctf/red_flag

#Blue Flag Functions
execute as f4682175-5eef-494c-9adb-fc8f6f2b1fda run function du-in:ingame/ctf/blue_flag

#Clear all banners from those who don't have it#
clear @a[gamemode=adventure,tag=!flagGot] #minecraft:banners

#Select Submode
execute if score #CTF gamemode matches 0 run return run function du-in:ingame/ctf/default/default
execute if score #CTF gamemode matches 1 run function du-in:ingame/ctf/timed/timed
