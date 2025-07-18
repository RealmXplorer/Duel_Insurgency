#Announce winners
execute as @a[tag=win] run scoreboard players add #main winners 1
execute if score #main winners matches 2.. run tag @a[tag=!teamMode] add tie
execute if entity @a[tag=team1,tag=win,tag=!falseWin,tag=!voidLose,tag=!void] if entity @a[tag=team2,tag=win,tag=!falseWin,tag=!voidLose,tag=!void] run tag @a add tie

#Normal
execute if entity @a[tag=!teamMode,tag=!falseWin,tag=!lobby,tag=!voidLose,tag=!void] run function du-in:ingame/endround/default_title

#Team
execute if entity @a[tag=teamMode,tag=win,tag=!falseWin,tag=!voidLose,tag=!void] run function du-in:ingame/endround/team_title

#Wins subtitle(only if not tied)
title @a[tag=!falseWin,tag=!lobby,tag=!voidLose,tag=!void,tag=!tie] subtitle {text:"WINS",color:gold}

title @a times 5 120 5

#Stop abilities
tag @a[tag=springLock] add kitActions
scoreboard players reset @a[scores={kit=4}] creeperTimer

#Set all losers to spectator
gamemode spectator @a[tag=lose,tag=!audience]

#Remove all music tags and stop music
tag @a remove songEnd
tag @a remove song
execute as @a[tag=!falseWin] at @a run function du-in:music/ingame/stop/all
execute as @a run function du-in:music/lobby/stop/lobby

#Anyone who does not have win tag, give lose.
tag @a[tag=!win] add lose
tag @a[tag=voidLose] add lose

#Add exp and levels to players
execute as @a[tag=!falseWin,tag=!spectating,tag=!voidLose,tag=!devMode] at @s run function du-in:other/levels

#Give achievements

#Replace CTF Flags
execute if entity @a[tag=ctfIngame] at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute if entity @a[tag=ctfIngame] at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Kill all ingame entities.
kill @e[nbt={inGround:1b}]
kill @e[type=item,tag=!displayItem]
kill @e[type=ender_pearl,tag=blakeTP]

function du-in:maps/jermall/stop
schedule clear du-in:maps/jermall/stop
schedule clear du-in:maps/jermall/pick_victim
schedule clear du-in:maps/jermall/eat_victim

#Play sounds for ending
execute as @a[tag=win,tag=!void,tag=!voidLose,tag=!falseWin,limit=1] at @s run function du-in:ingame/endround/winning_seq

effect give @a fire_resistance infinite 1 true

#Set endtimer
schedule function du-in:ingame/endround/end_ending 7s

#End function
tag @a add endSeq