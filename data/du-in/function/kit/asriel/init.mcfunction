#Ability functions
execute if entity @s[scores={asrielHitTimer=0..}] run function du-in:kit/asriel/ability/timer

scoreboard players set @s[scores={asrielTimer=5..}] asrielTimer 0

#Non-Villager
execute if entity @s[tag=!stolen] run function du-in:kit/asriel/constant