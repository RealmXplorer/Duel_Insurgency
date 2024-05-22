
#scoreboard players set @s[scores={music=2280..}] music 0
#execute if entity @s[scores={music=1}] run playsound minecraft:music.free record @s ~ ~ ~ 1 1 1
execute as @a[tag=free,tag=!musicOff] at @s run playsound minecraft:music.free record @s ~ ~ ~ 1 1 1
schedule function du-in:music/free/free 2280t
#function du-in:maps/ambient/global/forest