scoreboard players remove #main waveCooldown 1

#xp set @a 3 levels
#scoreboard players add @a[scores={gonersKilled=..29}] gonersKilled 1

execute if score #main waveCooldown matches ..1 run function du-in:void/wave_start