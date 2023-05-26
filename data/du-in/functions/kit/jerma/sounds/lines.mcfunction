execute if entity @s[tag=!hasOnionRing,predicate=du-in:chance/half_chance] run function du-in:kit/jerma/secondary/give_onion

playsound minecraft:jerma.kill voice @a[tag=!working] ~ ~ ~ 3100000 1 1

#execute if entity @s[tag=teamMode,predicate=du-in:chance/low_chance] run playsound minecraft:jerma.ctfkill voice @a[tag=!working] ~ ~ ~ 3100000 1 1
tag @s remove killLine