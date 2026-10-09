tag @s add sabotaged
xp set @s 3 levels
scoreboard players set @s sabotageTimer 40
tellraw @s [{text:"You've been backstabbed! Be careful using your ability!",bold:true,color:red}]
execute unless score #sab running matches 1 run function du-in:kit/nick/ability/sab_loop
