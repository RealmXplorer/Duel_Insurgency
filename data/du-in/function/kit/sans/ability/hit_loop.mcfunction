scoreboard players set #sansHit running 1
#Rage functions for all enraged players
execute as @a[tag=sansHitDuration] at @s run function du-in:kit/sans/ability/hit/timer

#Continue timer if another player has rage
execute unless entity @a[tag=sansHitDuration] run scoreboard players set #sansHit running 0
execute if entity @a[tag=sansHitDuration] run schedule function du-in:kit/sans/ability/hit_loop 1t replace