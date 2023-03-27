#Remove lobby tag from player who left
tag @s remove lobby
tag @s remove playing
tag @s remove cIngame
tag @s remove dmIngame
tag @s remove kothIngame
tag @s remove ctfIngame
tag @s remove cqIngame
tag @s add void
#Make player who left (if they weren't in a game) a spectator
execute if entity @a[tag=partyLeader,tag=!win,tag=!lose] run tag @s[tag=!spectating,tag=!working,tag=!dmDead,tag=!void] add spectating
execute if entity @s[tag=spectating] run function du-in:ingame/spect

#Teleport a player who was in game to the party leader, (or if party leader is spectating, teleport to other player)
execute if entity @a[tag=partyLeader,tag=void] run tp @s[tag=spectating] @a[tag=partyLeader,limit=1]
execute if entity @a[tag=partyLeader,tag=spectating] run tp @s[tag=spectating] @r[tag=void,sort=furthest]
execute if entity @a[tag=partyLeader,tag=spectating] run tp @s[tag=spectating] @r[tag=void]

#Match player who left's music with the party leader
execute if entity @a[tag=partyLeader,tag=song] run tag @s[tag=!musicOff] add song
execute if entity @a[tag=partyLeader,tag=songEnd] run tag @s[tag=!musicOff] add songEnd

#Match the gamemode tag to the party leader
#execute if entity @a[tag=partyLeader,tag=dmIngame] run tag @s add dmIngame
#execute if entity @a[tag=partyLeader,tag=kothIngame] run tag @s add kothIngame
#execute if entity @a[tag=partyLeader,tag=ctfIngame] run tag @s add ctfIngame
#execute if entity @a[tag=partyLeader,tag=cqIngame] run tag @s add cqIngame


#execute if entity @a[tag=partyLeader,tag=exIngame] run tag @s add exIngame
