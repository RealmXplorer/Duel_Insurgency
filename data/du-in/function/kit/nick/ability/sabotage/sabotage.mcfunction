scoreboard players set @s sabotageTimer 60
tag @s add sabotaged
tellraw @s [{text:"You've been hustled! Be careful using your ability!",bold:true,color:red}]
execute unless score #sab running matches 1 run function du-in:kit/nick/ability/sab_loop

execute if entity @s[scores={kit=35}] run function du-in:kit/judy/ability/item

execute unless entity @s[tag=sabotaged] run function du-in:kit/nick/ability/remove_ability