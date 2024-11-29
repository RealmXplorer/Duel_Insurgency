
tag @a remove kothl

tag @a remove kothHalf

tag @a remove kothEnd

scoreboard players reset * kothTimer
scoreboard players reset * kothTeamTimer

bossbar set minecraft:redkoth visible false
bossbar set minecraft:bluekoth visible false

tag @a remove kothIngame
tag @a remove kothMap
scoreboard players set #main onPoint 0

advancement grant @a[tag=win,tag=!devMode] only du-in:challenge/koth_win
