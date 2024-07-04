advancement revoke @s only du-in:kit/ring_killed

execute unless entity @s[tag=hasRing] run function du-in:kit/sauron/ring/give_ring

execute if entity @s[tag=hasRing] unless entity @a[tag=hasRing] as @a[tag=!hasRing,sort=random,limit=1] run function du-in:kit/sauron/ring/give_ring