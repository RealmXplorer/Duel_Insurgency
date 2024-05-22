#scoreboard players set @s[scores={music=3760..}] music 0
#execute if entity @s[scores={music=1}] run playsound minecraft:music.vain_pursuit record @s ~ ~ ~ 1 1 1

execute as @a at @s run playsound minecraft:music.vain_pursuit record @s ~ ~ ~ 1 1 1
schedule function du-in:music/void/vain_pursuit 3760t