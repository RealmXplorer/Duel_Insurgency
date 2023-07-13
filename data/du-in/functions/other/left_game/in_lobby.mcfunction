
tag @s[tag=playing] add win
#execute if entity @s[tag=win,tag=playing] run scoreboard players set #main endTime 5
execute if entity @s[tag=win,tag=playing] run schedule function du-in:ingame/endround/end_ending 1s


execute store result score @s lobby run scoreboard players get @a[tag=partyLeader,limit=1] lobby

tag @s remove void
tag @s remove voidOut

scoreboard players reset @s killIngame
scoreboard players reset @s kothTimer

execute if entity @a[tag=partyLeader,tag=lobby,tag=!subLobby] run tp @s @a[tag=partyLeader,limit=1]
execute if entity @a[tag=partyLeader,tag=lobby,tag=subLobby] run tp @s -999 13 517 -90 0


team join lobby @s[tag=!playing,tag=!ready,tag=!dmDead,tag=!spectating,tag=!team1,tag=!team2,tag=!AFK]

execute if entity @a[tag=partyLeader,tag=cl] run tag @s add cl
execute if entity @a[tag=partyLeader,tag=dml] run tag @s add dml
execute if entity @a[tag=partyLeader,tag=kothl] run tag @s add kothl
execute if entity @a[tag=partyLeader,tag=ctfl] run tag @s add ctfl
execute if entity @a[tag=partyLeader,tag=cql] run tag @s add cql
#execute if entity @a[tag=partyLeader,tag=exl] run tag @s add exl
execute if entity @a[tag=partyLeader,tag=cmap] run tag @s add cmap

#In gamemode select
execute if entity @a[tag=partyLeader,tag=kitMenu,tag=lobby] run scoreboard players set @s kitTheme 1
execute if entity @a[tag=partyLeader,tag=kitMenu,tag=lobby] run scoreboard players set @s kitList 7
execute if entity @a[tag=partyLeader,tag=kitMenu,tag=lobby] run tag @s add kitMenu

execute as @a run attribute @s generic.attack_damage base set 0

execute if entity @a[tag=partyLeader,tag=!kitMenu,tag=lobby] run tag @s remove kitMenu
execute if entity @a[tag=partyLeader,tag=!kitMenu,tag=lobby] run tag @s remove kitPicked
execute if entity @a[tag=partyLeader,tag=!kitMenu,tag=lobby] run tag @s remove teamPicked
execute if entity @a[tag=partyLeader,tag=!kitMenu,tag=lobby] run tag @s remove spect
execute if entity @a[tag=partyLeader,tag=!kitMenu,tag=lobby] run tag @s remove ready
execute if entity @a[tag=partyLeader,tag=!kitMenu,tag=lobby] run scoreboard players set @s kit 0

execute if entity @a[tag=partyLeader,tag=!kitMenu,tag=lobby] run team join lobby @s

stopsound @s record