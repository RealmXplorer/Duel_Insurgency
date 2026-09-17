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

#FLAG GRABS#
#Red Flag Stolen
#execute at @e[type=marker,tag=redFlag,tag=!captured,limit=1] as @a[tag=team2,distance=..1,tag=!spectating] run function du-in:ingame/ctf/red/red_captured
#execute as 455dd316-7956-43fe-8150-70adb7f5c5a1 at @s[tag=!captured] as @a[tag=team2,distance=..1,tag=!spectating] run function du-in:ingame/ctf/red/red_captured
#Blue Flag Stolen
#execute at @e[type=marker,tag=blueFlag,tag=!captured,limit=1] as @a[tag=team1,distance=..1,tag=!spectating] run function du-in:ingame/ctf/blue/blue_captured
#execute as f4682175-5eef-494c-9adb-fc8f6f2b1fda at @s[tag=!captured] as @a[tag=team1,distance=..1,tag=!spectating] run function du-in:ingame/ctf/blue/blue_captured

#FLAG CAPTURES#
#Red Scores
#execute at @e[type=marker,tag=redFlag,tag=!captured,limit=1] as @a[tag=team1,distance=..1,tag=flagGot] run function du-in:ingame/ctf/red/red_score
#execute as 455dd316-7956-43fe-8150-70adb7f5c5a1 at @s[tag=!captured] as @a[tag=team1,distance=..1,tag=flagGot] run function du-in:ingame/ctf/red/red_score

#Blue scores
# execute at @e[type=marker,tag=blueFlag,tag=!captured,limit=1] as @a[tag=team2,distance=..1,tag=flagGot] run function du-in:ingame/ctf/blue/blue_score
#execute as f4682175-5eef-494c-9adb-fc8f6f2b1fda at @s[tag=!captured] as @a[tag=team2,distance=..1,tag=flagGot] run function du-in:ingame/ctf/blue/blue_score

#FLAG RETURNS#
#Red flag return
#execute if entity @e[type=marker,tag=redFlag,tag=captured] unless entity @a[tag=flagGot,tag=team2] if score #main redFlagTimer matches ..0 run function du-in:ingame/ctf/red/red_return
#execute as 455dd316-7956-43fe-8150-70adb7f5c5a1 if entity @s[tag=captured] unless entity @a[tag=flagGot,tag=team2] if score #main redFlagTimer matches ..0 run function du-in:ingame/ctf/red/red_return

#Blue flag return
#execute if entity @e[type=marker,tag=blueFlag,tag=captured] unless entity @a[tag=flagGot,tag=team1] if score #main blueFlagTimer matches ..0 run function du-in:ingame/ctf/blue/blue_return
#execute as f4682175-5eef-494c-9adb-fc8f6f2b1fda if entity @s[tag=captured] unless entity @a[tag=flagGot,tag=team1] if score #main blueFlagTimer matches ..0 run function du-in:ingame/ctf/blue/blue_return

#Select Submode
execute if score #CTF gamemode matches 0 run function du-in:ingame/ctf/default/default
execute if score #CTF gamemode matches 1 run function du-in:ingame/ctf/timed/timed

#(old)
# execute if entity @a[tag=!timedMode,tag=partyLeader] run function du-in:ingame/ctf/default/default
# execute if entity @a[tag=timedMode,tag=partyLeader] run function du-in:ingame/ctf/timed/timed

#Clear all banners from those who don't have it#
clear @a[gamemode=adventure,tag=!flagGot] #minecraft:banners