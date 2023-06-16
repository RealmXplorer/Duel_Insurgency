execute if entity @s[tag=!flagGot,tag=!badBlock,tag=!sabotaged] run function du-in:kit/zombie/ability/set_spawn
execute if entity @s[tag=flagGot] run function du-in:kit/all/ability/flag
execute if entity @s[tag=badBlock] run function du-in:kit/all/ability/ground

execute if entity @s[tag=sabotaged] run function du-in:kit/zombie/ability/sabotaged

tag @s remove kitActions