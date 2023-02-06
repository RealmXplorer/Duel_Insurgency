tag @s remove lobby

execute if entity @a[tag=partyLeader,tag=!win,tag=!lose,tag=!winend] run tag @s[tag=!playing,tag=!spectating,tag=!working,tag=!dmDead] add spectating

execute if entity @a[tag=partyLeader,tag=playing] if entity @a[tag=playing,distance=50..] run tp @s[tag=playing] @a[tag=partyLeader,limit=1]
execute if entity @a[tag=partyLeader,tag=spectating] if entity @a[tag=playing,distance=50..] run tp @s[tag=playing] @r[tag=playing,sort=furthest]
execute if entity @a[tag=partyLeader,tag=spectating] run tp @s[tag=!playing,tag=!spectating] @r[tag=playing]


execute if entity @a[tag=partyLeader,tag=song] run tag @s[tag=!musicOff] add song
execute if entity @a[tag=partyLeader,tag=songEnd] run tag @s[tag=!musicOff] add songEnd


execute if entity @a[tag=partyLeader,tag=cIngame] run tag @s add cIngame
execute if entity @a[tag=partyLeader,tag=dmIngame] run tag @s add dmIngame
execute if entity @a[tag=partyLeader,tag=kothIngame] run tag @s add kothIngame
execute if entity @a[tag=partyLeader,tag=ctfIngame] run tag @s add ctfIngame
execute if entity @a[tag=partyLeader,tag=cqIngame] run tag @s add cqIngame
#execute if entity @a[tag=partyLeader,tag=exIngame] run tag @s add exIngame

execute if entity @s[tag=spectating] run function du-in:ingame/spect