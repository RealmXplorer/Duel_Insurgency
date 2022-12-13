execute if entity @s[scores={comboScore=3..}] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ .5 2
scoreboard players set @s comboScore 0
scoreboard players reset @s comboBreak
