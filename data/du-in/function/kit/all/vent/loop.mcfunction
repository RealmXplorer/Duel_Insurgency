scoreboard players set #ventCooldown running 1

execute as @a[tag=ventCooldown] run function du-in:kit/all/vent/timer

execute if entity @a[tag=ventCooldown] run schedule function du-in:kit/all/vent/loop 1t
scoreboard players set #ventCooldown running 0