scoreboard players set @s sabotageTimer 40
tag @s add sabotaged
tellraw @s [{text:"You've been backstabbed! Be careful using your ability!",bold:true,color:red}]

execute if entity @s[scores={kit=35}] run function du-in:kit/judy/ability/item

execute unless entity @s[tag=sabotaged] run function du-in:kit/nick/ability/remove_ability