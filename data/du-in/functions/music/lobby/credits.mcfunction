#scoreboard players add @s music 1
scoreboard players set @s[scores={music=120800..}] music 0
execute if entity @s[scores={music=1}] run playsound minecraft:music.credits record @s ~ ~ ~ 1000000 1 1