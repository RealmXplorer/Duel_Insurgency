execute if entity @s[tag=!sabotaged,tag=!void] run function du-in:kit/villager/ability/success
execute if entity @s[tag=sabotaged,tag=!void] run function du-in:kit/villager/ability/sabotaged

execute if entity @s[tag=void] run function du-in:kit/villager/ability/void/success

tag @s remove kitActions