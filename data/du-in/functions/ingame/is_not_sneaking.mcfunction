#scoreboard players reset @s parryCooldown
execute if entity @s[tag=!gasterInvisible,gamemode=adventure,tag=!inField,tag=!flagGot,tag=!deathMark,tag=!pondered] run effect clear @s minecraft:glowing
