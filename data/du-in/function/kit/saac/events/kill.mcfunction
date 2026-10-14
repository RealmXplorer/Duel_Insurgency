execute if entity @s[tag=killMsg] run function du-in:kit/saac/events/kill_msg
execute if entity @s[scores={killStreak=5}] run playsound du-in:kit.saac.line.ks voice @a ~ ~ ~ 3100000 1 1

execute unless entity @s[scores={killStreak=5}] if entity @s[scores={Health=..9}] run playsound du-in:kit.saac.line.low voice @a ~ ~ ~ 3100000 1 1
execute unless entity @s[scores={killStreak=5}] if entity @s[scores={Health=10..}] run playsound du-in:kit.saac.line.kill voice @a ~ ~ ~ 3100000 1 1
