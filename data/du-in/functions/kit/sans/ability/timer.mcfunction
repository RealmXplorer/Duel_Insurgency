scoreboard players remove @s sansHitTimer 1

execute unless entity @s[tag=!teamDead,scores={gasterTimer=..79}] run tag @s[scores={sansHitTimer=..0}] add armor
scoreboard players reset @s[scores={sansHitTimer=..0}] sansHitTimer
