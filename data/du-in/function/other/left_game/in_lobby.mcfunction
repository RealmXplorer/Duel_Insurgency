
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
execute if entity @a[tag=partyLeader,tag=kitMenu,tag=lobby] run function du-in:lobby/kitmenu/init

execute if entity @a[tag=partyLeader,tag=!kitMenu,tag=lobby] run function du-in:other/left_game/not_in_kit_menu

attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.armor_toughness base set 0
attribute @s minecraft:generic.knockback_resistance base set 0
attribute @s minecraft:generic.max_health base set 20
execute as @a run attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149

stopsound @s record