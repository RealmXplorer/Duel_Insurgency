scoreboard players add @s ralseiTP 2
scoreboard players add @s TPSound 1

execute if entity @s[scores={ralseiTP=70..}] run clear @s minecraft:gunpowder[item_model="du-in:other/tp_empty"]
execute if entity @s[scores={ralseiTP=100..}] run clear @s minecraft:gunpowder[item_model="du-in:other/tp1"]
execute if entity @s[scores={ralseiTP=130..}] run clear @s minecraft:gunpowder[item_model="du-in:other/tp2"]

execute if entity @s[scores={TPSound=10..},gamemode=adventure] run playsound minecraft:ralsei.graze master @a ~ ~ ~ 1 1
scoreboard players reset @s[scores={TPSound=10..}] TPSound