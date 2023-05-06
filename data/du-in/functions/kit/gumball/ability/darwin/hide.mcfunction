#effect clear @s invisibility
#effect clear @s slowness
#kill @e[type=minecraft:tropical_fish,tag=darwinFishReal,limit=1,sort=nearest]
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s[tag=stolen] remove darwin
playsound minecraft:darwin.end master @a ~ ~ ~ 10 1
scoreboard players reset @s darwinSound