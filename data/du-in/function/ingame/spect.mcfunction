team join Spectators @s
tag @s remove playing
tag @s remove lobby
execute unless entity @a[tag=partyLeader,tag=specialEvent] run gamemode spectator @s
execute unless entity @a[tag=partyLeader,tag=specialEvent] run tp @s @r[tag=!spectating]

execute if entity @a[tag=partyLeader,tag=specialEvent] run tp @s @a[tag=spectating,sort=furthest,limit=1]