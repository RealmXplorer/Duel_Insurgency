#effect clear @s invisibility
#effect clear @s slowness
#kill @e[type=minecraft:tropical_fish,tag=darwinFishReal,limit=1,sort=nearest]

tag @s[tag=stolen] remove darwin
execute if entity @s[tag=stolen] run tag @s add kitDone

##COPYRIGHT
playsound minecraft:darwin.end master @a ~ ~ ~ 10 1
scoreboard players reset @s darwinSound