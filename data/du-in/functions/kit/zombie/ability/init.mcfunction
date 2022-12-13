execute if entity @s[tag=!flagGot,tag=!badBlock] run function du-in:kit/zombie/ability/set_spawn
execute if entity @s[tag=flagGot] run function du-in:kit/all/ability/flag
execute if entity @s[tag=badBlock] run function du-in:kit/all/ability/ground
tag @s remove kitActions