item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
execute at @s run particle minecraft:poof ~ ~ ~ 0.2 0.7 0.2 0 100 force
execute at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 5 1.2
execute at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 5 1