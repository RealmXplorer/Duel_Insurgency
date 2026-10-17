scoreboard players set #yodaTimer running 1
execute as @a[tag=yodaDuration] at @s run function du-in:kit/yoda/ability/timer

execute if entity @a[tag=yodaDuration] run return run schedule function du-in:kit/yoda/ability/loop 1t
scoreboard players set #yodaTimer running 0