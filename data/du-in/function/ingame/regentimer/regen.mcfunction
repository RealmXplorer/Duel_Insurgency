#Regen and play sounds
effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={Health=..19}] unless entity @s[scores={kit=16}] unless entity @s[scores={kit=24}] run playsound minecraft:chara.ability master @a ~ ~ ~ 0.5 1.7
#execute if entity @s[scores={Health=..9}] if entity @s[scores={kit=16}] run playsound minecraft:chara.ability master @a ~ ~ ~ 0.5 1.7
execute if entity @s[scores={Health=..13}] if entity @s[scores={kit=16}] run playsound minecraft:chara.ability master @a ~ ~ ~ 0.5 1.7
execute if entity @s[scores={Health=..13}] if entity @s[scores={kit=24}] run playsound minecraft:chara.ability master @a ~ ~ ~ 0.5 1.7