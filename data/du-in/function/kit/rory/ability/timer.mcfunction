scoreboard players remove @s starCount 1
scoreboard players reset @s starTimer

summon marker ^ ^ ^1 {Tags:["starDirection"]}

execute if entity @s[scores={starCount=3}] run function du-in:kit/rory/ability/throw_star1
execute if entity @s[scores={starCount=3},tag=empower] positioned ^1 ^ ^ run function du-in:kit/rory/ability/throw_star1
execute if entity @s[scores={starCount=3},tag=empower] positioned ^-1 ^ ^ run function du-in:kit/rory/ability/throw_star1

execute if entity @s[scores={starCount=2}] run function du-in:kit/rory/ability/throw_star2
execute if entity @s[scores={starCount=2},tag=empower] positioned ^1 ^ ^ run function du-in:kit/rory/ability/throw_star2
execute if entity @s[scores={starCount=2},tag=empower] positioned ^-1 ^ ^ run function du-in:kit/rory/ability/throw_star2

execute if entity @s[scores={starCount=1}] run function du-in:kit/rory/ability/throw_star3
execute if entity @s[scores={starCount=1},tag=empower] positioned ^1 ^ ^ run function du-in:kit/rory/ability/throw_star3
execute if entity @s[scores={starCount=1},tag=empower] positioned ^-1 ^ ^ run function du-in:kit/rory/ability/throw_star3

kill @e[tag=starDirection]


execute if entity @s[scores={starCount=..1}] run function du-in:kit/rory/ability/end