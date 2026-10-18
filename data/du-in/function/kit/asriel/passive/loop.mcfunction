scoreboard players set #chaosSaberCooldown running 1
execute as @a[tag=asrielSaber] at @s run function du-in:kit/asriel/passive/cooldown

execute if entity @a[tag=asrielSaber] run return run schedule function du-in:kit/asriel/passive/loop 1t
scoreboard players set #chaosSaberCooldown running 0