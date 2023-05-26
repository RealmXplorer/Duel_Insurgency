#scoreboard players set @s[scores={music=3320..}] music 0
#execute if entity @s[scores={music=1}] run playsound minecraft:music.corruption record @s ~ ~ ~ 1 1 1

execute as @a at @s run playsound minecraft:music.corruption record @s ~ ~ ~ 1 1 1
schedule function du-in:music/void/corruption 3320t