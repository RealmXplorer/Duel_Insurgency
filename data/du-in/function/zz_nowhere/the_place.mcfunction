scoreboard players add @s Time.add 1

tp @s[tag=Player.accept] 188.5 5 -11.021 -90 0

#stopsound @s

scoreboard players set @s[scores={music=3560..}] music 0
execute if entity @s[scores={music=1}] run playsound minecraft:music.man master @s ~ ~ ~ 1000000 1 1


#add inventory check to avoid tiving duplicate eggs
execute if entity @s[scores={Time.add=103}] unless items entity @s hotbar.* string unless items entity @s inventory.* string run give @s string[item_model="du-in:other/objectegg",item_name="EndpointException",lore=[{"color":"white","italic":false,"text":"java.io.FileNotFoundException"}]] 1

#scoreboard players reset @s[scores={Time.add=134}] Time.add

execute if entity @s[scores={Object.drop.null=1..}] run function du-in:zz_nowhere/object_unknown