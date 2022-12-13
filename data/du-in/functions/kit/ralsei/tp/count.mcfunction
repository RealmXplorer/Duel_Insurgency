scoreboard players add @s ralseiTP 1
scoreboard players add @s TPSound 1

execute if entity @s[scores={TPSound=10..},gamemode=adventure] run playsound minecraft:ralsei.graze master @a ~ ~ ~ 1 1
scoreboard players reset @s[scores={TPSound=10..}] TPSound