execute if entity @s[tag=!empower] as @a[distance=0.05..3,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/spider/ability/effect_normal

execute if entity @s[tag=empower] as @a[distance=0.05..3,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/spider/ability/effect_empower