scoreboard players set @s sabotageTimer 30
tag @s add sabotaged
tag @s add inspireSabotage
execute unless score #sab running matches 1 run function du-in:kit/nick/ability/sab_loop

tellraw @s [{text:"You're terrified! Be careful using your ability!",bold:true,color:red}]

execute if entity @s[scores={kit=35}] run function du-in:kit/judy/ability/item