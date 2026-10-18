scoreboard players set #sansHead running 1
execute as @a[tag=sansHead] at @s run function du-in:kit/sans/ability/timer

execute if entity @a[tag=sansHead] run return run schedule function du-in:kit/sans/ability/head_loop 1t
scoreboard players set #sansHead running 0