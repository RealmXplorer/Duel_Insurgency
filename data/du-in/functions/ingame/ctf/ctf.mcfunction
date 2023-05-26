#CTF BLUE FLAG EFFECTS#
execute store result bossbar du-in:redctf value run scoreboard players get #main redPoints
execute if score #main redFlagTimer matches 0.. run scoreboard players remove #main redFlagTimer 1

#BLUE STUFF#
execute store result bossbar du-in:bluectf value run scoreboard players get #main bluePoints
execute if score #main blueFlagTimer matches 0.. run scoreboard players remove #main blueFlagTimer 1

#If a player has a flag#
execute as @a[tag=flagGot] run function du-in:ingame/ctf/flag_have

#FLAG GRABS#
execute at @e[type=marker,tag=redFlag,tag=!captured,limit=1] as @a[tag=team2,distance=..1,tag=!spectating,tag=!ownFlag] run function du-in:ingame/ctf/red/red_captured

execute at @e[type=marker,tag=redFlag,tag=captured,limit=1] as @a[tag=team1,distance=..1,tag=!spectating,tag=ownFlag] run function du-in:ingame/ctf/red/red_return

execute at @e[type=marker,tag=blueFlag,tag=!captured,limit=1] as @a[tag=team1,distance=..1,tag=!spectating,tag=!ownFlag] run function du-in:ingame/ctf/blue/blue_captured
execute at @e[type=marker,tag=blueFlag,tag=captured,limit=1] as @a[tag=team2,distance=..1,tag=!spectating,tag=ownFlag] run function du-in:ingame/ctf/blue/blue_return

#FLAG CAPTURES#
execute at @e[type=marker,tag=redFlag,tag=!captured,limit=1] as @a[tag=team1,distance=..1,tag=flagGot,tag=!ownFlag] run function du-in:ingame/ctf/red/red_score

execute at @e[type=marker,tag=blueFlag,tag=!captured,limit=1] as @a[tag=team2,distance=..1,tag=flagGot,tag=!ownFlag] run function du-in:ingame/ctf/blue/blue_score

#FLAG RETURNS#
execute if entity @e[type=marker,tag=redFlag,tag=captured] unless entity @a[tag=flagGot,tag=team2] if score #main redFlagTimer matches ..0 run function du-in:ingame/ctf/red/red_return
execute if entity @e[type=marker,tag=blueFlag,tag=captured] unless entity @a[tag=flagGot,tag=team1] if score #main blueFlagTimer matches ..0 run function du-in:ingame/ctf/blue/blue_return

execute if entity @a[tag=!timedMode] run function du-in:ingame/ctf/default/default

# #CLOSE TO END#
execute if entity @a[tag=timedMode] run function du-in:ingame/ctf/timed/timed

# execute if entity @a[tag=!ctfClose] if score #main bluePoints >= #main ctfClose run function du-in:ingame/ctf/close
# execute if entity @a[tag=!ctfClose] if score #main redPoints >= #main ctfClose run function du-in:ingame/ctf/close

# #END#
# execute if entity @a[tag=!ctfEnd] if score #main bluePoints >= #main ctfMax run function du-in:ingame/ctf/win
# execute if entity @a[tag=!ctfEnd] if score #main redPoints >= #main ctfMax run function du-in:ingame/ctf/win

#Clear all banners from those who don't have it#
clear @a[tag=!flagGot,tag=!working] #minecraft:banners

#MUSIC#
#execute as @a[tag=ctfIngame,tag=!startgame,tag=!saac,tag=!bigChungus,tag=!saul] at @s run function du-in:music/ingame/ctf

#function du-in:maps/ctf