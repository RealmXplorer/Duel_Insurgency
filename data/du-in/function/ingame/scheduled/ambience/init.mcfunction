#Classic and Deathmatch
execute as @a[tag=cmap,tag=!ambOff,tag=!void] run function du-in:ingame/scheduled/ambience/classic_init

#KOTH
execute as @a[tag=kothIngame,tag=!ambOff,tag=!void] run function du-in:ingame/scheduled/ambience/koth_init

#CTF
execute as @a[tag=ctfIngame,tag=!ambOff,tag=!void] run function du-in:ingame/scheduled/ambience/ctf_init

#Conquest
execute as @a[tag=cqIngame,tag=!ambOff,tag=!void] run function du-in:ingame/scheduled/ambience/conquest_init

#Jungle biomes
execute as @a[predicate=du-in:ambience/jungle_check,tag=!ambOff,tag=!void] run playsound minecraft:ambient.jungleamb ambient @s ~ ~ ~ 1 1 1

#Free
execute as @a[tag=free,tag=!ambOff] run function du-in:ingame/scheduled/ambience/forest

#Loop
execute unless entity @a[tag=void,tag=partyLeader] run schedule function du-in:ingame/scheduled/ambience/init 45s