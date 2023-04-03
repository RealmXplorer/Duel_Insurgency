title @a[tag=kothIngame,tag=!kothHalf] actionbar {"text":"Time is halfway up!","color":"gold"}
#execute at @a run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.15
execute at @a as @a run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 1
execute at @a as @a run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 2

tag @a[tag=song,tag=!songEnd,tag=!win,tag=!lose] add songEnd
scoreboard players set @a[tag=song,tag=songEnd] music 0
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
tag @a remove song

#End function
tag @s[tag=!kothHalf] add kothHalf