#Revert villager back to default
tag @s[tag=stolen] remove darwin
execute if entity @s[tag=stolen] run tag @s add kitDone

xp set @s[tag=!stolen] 300 levels
##COPYRIGHT
playsound minecraft:darwin.end master @a ~ ~ ~ 10 1
tag @s remove cooldown
scoreboard players reset @s darwinSound