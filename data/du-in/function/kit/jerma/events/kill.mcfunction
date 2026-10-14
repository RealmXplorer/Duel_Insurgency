execute if entity @s[tag=killMsg] run function du-in:kit/jerma/events/kill_msg

execute if entity @s[tag=!hasOnionRing,predicate=du-in:chance/half_chance] run function du-in:kit/jerma/secondary/give_onion

playsound du-in:kit.jerma.kill voice @a ~ ~ ~ 3100000 1 1

#execute if entity @s[tag=teamMode,predicate=du-in:chance/low_chance] run playsound du-in:kit.jerma.ctfkill voice @a ~ ~ ~ 3100000 1 1