scoreboard players set #bogoDuration running 1

execute as @a[tag=bogoDuration] run function du-in:kit/bogo/ability/charge

execute if entity @a[tag=bogoDuration] run return run schedule function du-in:kit/bogo/ability/loop 1t
scoreboard players set #bogoDuration running 0