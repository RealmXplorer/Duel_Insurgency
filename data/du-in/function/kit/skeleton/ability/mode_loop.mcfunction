scoreboard players set #skeletonMode running 1

execute as @a[tag=skeletonMode] unless items entity @s hotbar.* #minecraft:arrows run function du-in:kit/skeleton/ability/end

execute if entity @a[tag=skeletonMode] run return run schedule function du-in:kit/skeleton/ability/mode_loop 5t
scoreboard players set #skeletonMode running 0