scoreboard players add @s Time.add 1

tp @s[tag=Player.accept] 188.5 5 -11.021 -90 0

#stopsound @s

#add inventory check to avoid tiving duplicate eggs
execute if entity @s[scores={Time.add=73}] unless items entity @s hotbar.* string unless items entity @s inventory.* string run give @s string[item_model="du-in:other/objectegg",item_name="EndpointException",lore=[{"color":"white","italic":false,"text":"java.io.FileNotFoundException"}]] 1

scoreboard players reset @s[scores={Time.add=94}] Time.add

execute if entity @s[scores={Object.drop.null=1..}] run function du-in:zz_nowhere/object_unknown