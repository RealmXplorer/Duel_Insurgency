execute if entity @s[tag=!darwin] run playsound minecraft:gumball.hit master @a ~ ~ ~ 2 1 1
execute if entity @s[tag=darwin] run playsound minecraft:darwin.hit master @a ~ ~ ~ 2 1 1
scoreboard players reset @s hit
