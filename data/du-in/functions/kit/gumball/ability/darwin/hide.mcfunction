#Revert villager back to default
tag @s[tag=stolen] remove darwin
execute if entity @s[tag=stolen] run tag @s add kitDone

##COPYRIGHT
playsound minecraft:darwin.end master @a ~ ~ ~ 10 1
scoreboard players reset @s darwinSound