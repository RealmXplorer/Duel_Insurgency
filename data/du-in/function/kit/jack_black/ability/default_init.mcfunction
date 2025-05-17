execute if entity @s[tag=!sabotaged] as @a[tag=playing,tag=!spectating] unless score @a[scores={kit=1005},tag=kitActions,limit=1] team = @s team run tag @s add chickenJockey
tag @s[tag=!sabotaged] remove chickenJockey
tag @s[tag=sabotaged] add chickenJockey

playsound minecraft:jack_black.chicken_jockey master @a ~ ~ ~ 1 1

execute as @a[tag=chickenJockey] run function du-in:kit/jack_black/ability/chicken_jockey

tag @s remove sabotaged
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 400 levels
tag @s remove kitActions