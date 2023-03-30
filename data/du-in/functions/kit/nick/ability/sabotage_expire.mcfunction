tellraw @s[tag=sabotaged] [{"text":"It's safe to use your ability again...","bold":true,"color":"green"}]
xp set @s[tag=sabotaged] 80 levels
tag @s remove sabotaged
scoreboard players reset @s sabotageTimer