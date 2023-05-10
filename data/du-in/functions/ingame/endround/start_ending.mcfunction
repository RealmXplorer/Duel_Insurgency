#Announce winners
execute as @a[tag=win] run scoreboard players add #main winners 1
execute if score #main winners matches 2.. run tag @a[tag=!teamMode] add tie
execute if entity @a[tag=team1,tag=win,tag=!falseWin,tag=!voidLose,tag=!void] if entity @a[tag=team2,tag=win,tag=!falseWin,tag=!voidLose,tag=!void] run tag @a add tie

#Normal
#title @a[tag=!teamMode,tag=!falseWin,tag=!lobby,tag=!voidLose,tag=!void,tag=!tie] title {"text":"","bold":true,"color":"gold","extra":[{"selector":"@a[tag=win,tag=!falseWin,tag=!void]"}]}
#title @a[tag=!teamMode,tag=!falseWin,tag=!lobby,tag=!voidLose,tag=!void,tag=tie] title {"text":"TIE!","bold":true,"color":"gray"}
execute if entity @a[tag=!teamMode,tag=!falseWin,tag=!lobby,tag=!voidLose,tag=!void] run function du-in:ingame/endround/default_title

#Team
execute if entity @a[tag=teamMode,tag=win,tag=!falseWin,tag=!voidLose,tag=!void] run function du-in:ingame/endround/team_title

# execute if entity @a[tag=team1,tag=win,tag=!falseWin,tag=!voidLose,tag=!void] run title @a title [{"text":"RED TEAM","bold":true,"color":"red"}]
# execute if entity @a[tag=team2,tag=win,tag=!falseWin,tag=!voidLose,tag=!void] run title @a title [{"text":"BLUE TEAM","bold":true,"color":"blue"}]
# execute if entity @a[tag=team1,tag=win,tag=!falseWin,tag=!voidLose,tag=!void,tag=tie] run title @a title [{"text":"TIE!","bold":true,"color":"gray"}]

#Wins subtitle(only if not tied)
title @a[tag=!falseWin,tag=!lobby,tag=!voidLose,tag=!void,tag=!tie] subtitle {"text":"WINS","color":"gold"}

title @a times 5 120 5

#Stop abilities
tag @a[tag=springLock] add kitActions
scoreboard players reset @a[scores={kit=4}] creeperTimer

#Set all losers to spectator
gamemode spectator @a[tag=lose]

#Remove all music tags and stop music
tag @a remove songEnd
tag @a remove song
execute as @a[tag=!falseWin] at @a run function du-in:music/ingame/stop/all
execute as @a run function du-in:music/lobby/stop/lobby

#Set endtimer
schedule function du-in:ingame/endround/end_ending 7s

#Anyone who does not have win tag, give lose.
tag @a[tag=!win] add lose
tag @a[tag=voidLose] add lose

#Add exp and levels to players
execute as @a[tag=!ranMode,tag=!falseWin,tag=!spectating,tag=!voidLose] at @s run function du-in:other/levels

#Give achievements
advancement grant @a[tag=win,tag=!falseWin,tag=!spectating,tag=!voidLose,tag=!tie] only du-in:gamemode/win

#Replace CTF Flags
execute if entity @a[tag=ctfIngame] at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute if entity @a[tag=ctfIngame] at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Reset Conquest points
execute if entity @a[tag=cqIngame] run function du-in:ingame/conquest/reset_points

#Teleport and kill all map specific entities
tp @e[type=!player,tag=mapSpecific] 216 0 40
kill @e[type=!player,tag=mapSpecific]

#Kill all ingame entities.
#kill @e[tag=asgoreFire]
kill @e[nbt={inGround:1b}]
kill @e[type=item,nbt={Item:{tag:{weaponItem:1b}}}]
kill @e[type=ender_pearl,tag=blakeTP]

#kill @e[tag=grave,type=!player]
#kill @e[tag=asgoreArrow]
#kill @e[type=armor_stand,tag=papyrusBone]
#kill @e[type=marker,tag=kyloHitPos]

#Play sounds for ending
execute if entity @a[tag=partyLeader,tag=aprilFools] as @a[tag=win,tag=!void,tag=!voidLose] at @s run playsound minecraft:soundeffect.laugh master @a ~ ~ ~ 100000 1
execute unless entity @a[tag=partyLeader,tag=aprilFools] as @a[tag=win,tag=!aprilFools,tag=!falseWin,tag=!stolen,tag=!void,tag=!voidLose,tag=!tie] unless entity @s[scores={team=1..}] at @s run function du-in:kit/all/winline
execute as @a[tag=win,tag=stolen,tag=!void,tag=!voidLose] at @s run function du-in:kit/all/win_music/start
execute as @a[tag=win,tag=tie,tag=!void,tag=!voidLose] at @s run function du-in:kit/all/win_music/start
execute as @a[scores={team=1..},tag=win,tag=!void,tag=!voidLose] at @s run function du-in:kit/all/win_music/start

execute if entity @a[scores={team=1..},tag=!void,tag=!voidLose] at @r run function du-in:kit/all/win_music/start

#End function
tag @a add endSeq