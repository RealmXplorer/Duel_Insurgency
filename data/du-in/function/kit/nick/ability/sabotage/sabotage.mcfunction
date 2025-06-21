scoreboard players set @s sabotageTimer 60
tag @s add sabotaged
tellraw @s [{text:"You've been hustled! Be careful using your ability!",bold:true,color:red}]

execute unless entity @s[tag=sabotaged] run function du-in:kit/nick/ability/remove_ability