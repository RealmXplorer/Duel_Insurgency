execute if entity @s[tag=!flagGot,tag=!badBlock] run function du-in:kit/all/ability/activate
execute if entity @s[tag=flagGot] run function du-in:kit/all/ability/flag
execute if entity @s[tag=badBlock] run function du-in:kit/all/ability/ground
scoreboard players reset @s kitUse