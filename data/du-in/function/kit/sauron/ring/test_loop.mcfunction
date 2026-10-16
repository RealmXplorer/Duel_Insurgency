execute unless entity @a[tag=hasRing] as @p[tag=playing,gamemode=!spectator] run function du-in:kit/sauron/ring/give_ring

execute if entity @a[tag=playing] run schedule function du-in:kit/sauron/ring/test_loop 1s