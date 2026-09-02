scoreboard players add @s Time.add 1

execute if entity @s[scores={Time.add=73}] run give @s string[item_model="du-in:other/objectegg",item_name="EndpointException",lore=[{"color":"white","italic":false,"text":"java.io.FileNotFoundException"}]] 1
scoreboard players reset @s[scores={Time.add=94}] Time.add

execute if entity @s[scores={Object.drop.null=1..}] run function du-in:zz_nowhere/object_unknown