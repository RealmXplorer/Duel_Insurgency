#REMOVE GAMEMODE SPECIFIC LOBBY TAG#
execute if entity @a[tag=partyLeader,tag=!cl] run tag @s remove cl
execute if entity @a[tag=partyLeader,tag=!dml] run tag @s remove dml
execute if entity @a[tag=partyLeader,tag=!kothl] run tag @s remove kothl
execute if entity @a[tag=partyLeader,tag=!ctfl] run tag @s remove ctfl
execute if entity @a[tag=partyLeader,tag=!cql] run tag @s remove cql
execute if entity @a[tag=partyLeader,tag=!cmap] run tag @s remove cmap

#REMOVE INGAME MUSIC TAGS#
execute if entity @a[tag=partyLeader,tag=!song] run tag @s remove song
execute if entity @a[tag=partyLeader,tag=!songEnd] run tag @s remove songEnd
#CONDITIONALLY REMOVE GAMEMODE SPECIFIC TAGS#
execute if entity @a[tag=partyLeader,tag=!cIngame] run tag @s remove cIngame
execute if entity @a[tag=partyLeader,tag=!dmIngame] run tag @s remove dmIngame
execute if entity @a[tag=partyLeader,tag=!kothIngame] run tag @s remove kothIngame
execute if entity @a[tag=partyLeader,tag=!ctfIngame] run tag @s remove ctfIngame
execute if entity @a[tag=partyLeader,tag=!cqIngame] run tag @s remove cqIngame
