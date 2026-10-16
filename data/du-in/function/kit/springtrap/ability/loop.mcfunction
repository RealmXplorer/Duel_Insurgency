scoreboard players set #springLock running 1

execute as @a[tag=springLock] run function du-in:kit/springtrap/ability/springlocked

execute if entity @a[tag=springLock] run return run schedule function du-in:kit/springtrap/ability/loop 1t
scoreboard players set #springLock running 0