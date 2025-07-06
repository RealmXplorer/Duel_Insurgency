say success!
scoreboard players add @s judyInspire 30

execute if entity @s[scores={judyInspire=30..},tag=!stolen] run clear @s minecraft:gunpowder[item_model="du-in:other/inspire_empty"]
execute if entity @s[scores={judyInspire=60..},tag=!stolen] run clear @s minecraft:gunpowder[item_model="du-in:other/inspire1"]
execute if entity @s[scores={judyInspire=90..},tag=!stolen] run clear @s minecraft:gunpowder[item_model="du-in:other/inspire2"]
