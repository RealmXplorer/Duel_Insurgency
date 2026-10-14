#Runs when this kit kills a player
execute if entity @s[tag=killMsg] run function du-in:kit/all/kill/msg/generic
execute if entity @s[predicate=du-in:chance/quarter_chance] run playsound du-in:kit.jevil.laugh master @a ~ ~ ~ 100 1
