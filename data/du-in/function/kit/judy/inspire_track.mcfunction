execute if entity @a[tag=sabotaged,tag=kitActions] run scoreboard players add @s judyInspire 10
scoreboard players add @s judyInspire 20

execute if entity @s[scores={judyInspire=30..},tag=!stolen] run clear @s minecraft:gunpowder[item_model="du-in:other/inspire_empty"]
execute if entity @s[scores={judyInspire=60..},tag=!stolen] run clear @s minecraft:gunpowder[item_model="du-in:other/inspire1"]
execute if entity @s[scores={judyInspire=90..},tag=!stolen] run clear @s minecraft:gunpowder[item_model="du-in:other/inspire2"]

#Max TP
execute if entity @s[scores={judyInspire=120..}] run function du-in:kit/judy/inspire/max