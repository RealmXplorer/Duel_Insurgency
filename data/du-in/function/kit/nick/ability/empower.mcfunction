xp set @s[tag=!wilde] 3 levels
scoreboard players set @s sabotageTimer 60
tag @s add empower
execute unless score #sab running matches 1 run function du-in:kit/nick/ability/sab_loop

tellraw @s [{text:"Your ability has been empowered!",bold:true,color:green}]