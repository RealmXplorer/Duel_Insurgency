#Announce player
title @a actionbar {"text":"Time is halfway up!","color":"gold"}

bossbar set bossbar:gametimer color red

#Playsound
#execute at @a as @a run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1.15
execute at @a as @a run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 1
execute at @a as @a run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 2

#Start end of round music
tag @a[tag=!working,tag=!win,tag=!lose,tag=song] add songEnd
scoreboard players set @a[tag=song,tag=songEnd] music 0
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
tag @a[tag=songEnd] remove song