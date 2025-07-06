
execute if entity @a[distance=0.05..3,tag=kitActions,gamemode=!spectator] run function du-in:kit/judy/inspire/count

#Max TP
execute if entity @s[scores={judyInspire=120..}] run function du-in:kit/judy/inspire/max