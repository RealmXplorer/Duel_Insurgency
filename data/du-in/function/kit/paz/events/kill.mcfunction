execute if entity @s[tag=killMsg] run function du-in:kit/paz/events/kill_msg
execute if entity @s[predicate=du-in:chance/forty_chance] run playsound du-in:kit.paz.laugh voice @a ~ ~ ~ 3100000 1 1

execute if entity @s[tag=!fortniteCard] run function du-in:kit/paz/card/give_card