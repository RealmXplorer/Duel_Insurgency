#Revert villager back to default
tag @s[tag=stolen] remove darwin
execute if entity @s[tag=stolen] run tag @s add kitDone

xp set @s[tag=!stolen] 300 levels
##copyright
playsound minecraft:darwin.end master @a ~ ~ ~ 10 1
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 10 1
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 10 2
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 10 .5

tag @s remove cooldown
scoreboard players reset @s darwinSound