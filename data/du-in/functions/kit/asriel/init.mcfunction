
#ABILITY#
#execute if entity @s[level=1] run function du-in:kit/asriel/ability/item

#Ability start - Now in kit/all/ability/activate
#execute if entity @s[tag=kitActions] run function du-in:kit/asriel/ability/init

#Ability functions
execute if entity @s[scores={asrielHitTimer=0..}] run function du-in:kit/asriel/ability/timer

scoreboard players set @s[scores={asrielTimer=3..}] asrielTimer 0

#Non-Villager
execute if entity @s[tag=!stolen] run function du-in:kit/asriel/constant