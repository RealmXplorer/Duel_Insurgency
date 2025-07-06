
execute if entity @a[tag=kitActions,gamemode=!spectator] run function du-in:kit/judy/inspire/count

#Max TP
execute if entity @s[scores={judyInspire=120..}] run function du-in:kit/judy/inspire/max