execute if entity @s[tag=killMsg] run function du-in:kit/impostor/events/kill_msg
playsound du-in:kit.sus.kill voice @a ~ ~ ~ 3100000 1 1

#Killstreak dialogue
execute if entity @s[scores={killStreak=5}] run playsound du-in:kit.sus.line.ks voice @a ~ ~ ~ 3100000 1 1

#Kill dialogue
execute unless entity @s[scores={killStreak=5}] if entity @s[predicate=du-in:chance/forty_chance] run playsound du-in:kit.sus.line.kill voice @a ~ ~ ~ 3100000 1 1