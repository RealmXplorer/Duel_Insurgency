advancement grant @a[tag=win,tag=!falseWin,tag=!spectating,tag=!voidLose,tag=!tie] only du-in:gamemode/kothwin

tag @a remove kothl

tag @a remove kothHalf

tag @a remove kothEnd

scoreboard players reset * kothTimer
scoreboard players reset * kothTeamTimer

bossbar set minecraft:redkoth visible false
bossbar set minecraft:bluekoth visible false

tag @a remove kothIngame
scoreboard players set #main onPoint 0