#Announce player
title @a actionbar {"text":"Time is halfway up!","color":"gold"}

bossbar set bossbar:gametimer color red

#Playsound
#execute as @a at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1.15
execute as @a at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 1
execute as @a at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 2

#Start end of round music
tag @a[tag=!win,tag=!lose,tag=song] add songEnd
scoreboard players set @a[tag=song,tag=songEnd] music 0
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
execute if entity @a[tag=cIngame] run function du-in:music/ingame/classic
execute if entity @a[tag=dmIngame] run function du-in:music/ingame/deathmatch
execute if entity @a[tag=kothIngame] run function du-in:music/ingame/koth
execute if entity @a[tag=ctfIngame] run function du-in:music/ingame/ctf
execute if entity @a[tag=cqIngame] run function du-in:music/ingame/conquest

tag @a[tag=songEnd] remove song