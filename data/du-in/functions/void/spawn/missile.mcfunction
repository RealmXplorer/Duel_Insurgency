execute at @e[type=marker,tag=missileSpawn,sort=random,limit=1] run function du-in:void/spawn/launch_missile

#Loop missile spawning
execute unless entity @a[tag=win] run schedule function du-in:void/spawn/missile 20s