#Announce winners
title @a[tag=!teamMode,tag=!falseWin,tag=!lobby] title {"text":"","bold":true,"color":"gold","extra":[{"selector":"@a[tag=win,tag=!falseWin]"}]}
execute if entity @a[tag=team1,tag=win] run title @a title [{"text":"RED TEAM","bold":true,"color":"red"}]
execute if entity @a[tag=team2,tag=win] run title @a title [{"text":"BLUE TEAM","bold":true,"color":"blue"}]
title @a[tag=!falseWin,tag=!lobby] subtitle {"text":"WINS","color":"gold"}
title @a times 5 120 5

#Stop abilities
tag @a[tag=springLock] add kitActions
scoreboard players reset @a creeperTimer

#Set all losers to spectator
gamemode spectator @a[tag=lose]

#Remove all music tags and stop music
tag @a remove songEnd
tag @a remove song
execute as @a[tag=!falseWin] at @a run function du-in:music/ingame/stop/all
execute as @a run function du-in:music/lobby/stop/lobby

#Set endtimer
scoreboard players set #main endTime 140

#End game immediately if shutdown
execute if entity @a[tag=falseWin] run scoreboard players set #main endTime 6

#Anyone who does not have win tag, give lose.
tag @a[tag=!win] add lose

#Add exp and levels to players
execute as @a[tag=!ranMode,tag=!falseWin,tag=!spectating] at @s run function du-in:other/levels

#Give achievements
advancement grant @a[tag=win,tag=!falseWin,tag=!spectating] only du-in:win
advancement grant @a[tag=cIngame,tag=win,tag=!falseWin,tag=!spectating] only du-in:cwin
advancement grant @a[tag=ctfIngame,tag=win,tag=!falseWin,tag=!spectating] only du-in:ctfwin
advancement grant @a[tag=dmIngame,tag=win,tag=!falseWin,tag=!spectating] only du-in:dmwin
advancement grant @a[tag=cqIngame,tag=win,tag=!falseWin,tag=!spectating] only du-in:conqwin
advancement grant @a[tag=kothIngame,tag=win,tag=!falseWin,tag=!spectating] only du-in:kothwin
#advancement grant @a[tag=exIngame,tag=win,tag=!falseWin,tag=!spectating] only du-in:exwin

#Replace CTF Flags
execute if entity @a[tag=ctfIngame] at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute if entity @a[tag=ctfIngame] at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Reset Conquest points
execute if entity @a[tag=cqIngame] run function du-in:ingame/conquest/reset

#Teleport and kill all map specific entities
tp @e[type=!player,tag=mapSpecific] 216 0 40
kill @e[type=!player,tag=mapSpecific]

#Kill all ingame entities.
kill @e[tag=asgoreFire]
kill @e[nbt={inGround:1b}]
kill @e[type=item,nbt={Item:{tag:{weaponItem:1b}}}]
kill @e[tag=grave,type=!player]
kill @e[tag=redFlagItem]
kill @e[tag=blueFlagItem]
kill @e[tag=asgoreArrow]
kill @e[type=armor_stand,tag=papyrusBone]
kill @e[type=marker,tag=kyloHitPos]

#Play sounds for ending
execute if entity @a[tag=partyLeader,tag=aprilFools] as @a[tag=win] at @s run playsound minecraft:soundeffect.laugh master @a ~ ~ ~ 100000 1
execute unless entity @a[tag=partyLeader,tag=aprilFools] as @a[tag=win,tag=!aprilFools,tag=!falseWin,tag=!stolen] unless entity @s[scores={team=1..}] at @s run function du-in:kit/all/winline

#End function
tag @a add endSeq