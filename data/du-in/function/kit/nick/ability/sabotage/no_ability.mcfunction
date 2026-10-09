tag @s add sabotaged
xp set @s 3 levels
scoreboard players set @s sabotageTimer 60
tellraw @s [{text:"You've been hustled! Be careful using your ability!",bold:true,color:red}]
execute unless score #sab running matches 1 run function du-in:kit/nick/ability/sab_loop
