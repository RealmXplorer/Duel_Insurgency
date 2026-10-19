scoreboard players set #bogoShieldBroken running 1

execute as @a[tag=brokenShield] at @s run function du-in:kit/bogo/shield/timer

execute if entity @a[tag=brokenShield] run return run schedule function du-in:kit/bogo/shield/loop 1t
scoreboard players set #bogoShieldBroken running 0