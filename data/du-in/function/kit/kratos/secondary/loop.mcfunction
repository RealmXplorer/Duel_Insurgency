scoreboard players set #kratosRageDuration running 1

execute as @a[tag=kratosRage] at @s run function du-in:kit/kratos/secondary/in_rage

execute if entity @a[tag=kratosRage] run return run schedule function du-in:kit/kratos/secondary/loop 1t
scoreboard players set #kratosRageDuration running 0