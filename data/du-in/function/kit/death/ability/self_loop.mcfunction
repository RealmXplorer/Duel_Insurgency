scoreboard players set #deathSelfTimer running 1

execute as @a[tag=deathAbility] at @s run function du-in:kit/death/ability/ability_timer

execute if entity @a[tag=deathAbility] run return run schedule function du-in:kit/death/ability/self_loop 1t
scoreboard players set #deathSelfTimer running 0