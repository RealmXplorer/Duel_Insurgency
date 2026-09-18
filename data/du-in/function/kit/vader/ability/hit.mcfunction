damage @s 1 arrow by @a[scores={kit=18},tag=kitActions,sort=nearest,limit=1]

execute if entity @s[tag=!empoweredVaderHit] run function du-in:kit/vader/ability/effect
execute if entity @s[tag=empoweredVaderHit] run function du-in:kit/vader/ability/empowered_effect
