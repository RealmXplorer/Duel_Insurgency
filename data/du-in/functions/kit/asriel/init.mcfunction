
#ABILITY#
execute if entity @s[level=1] run function du-in:kit/asriel/ability/item

#Ability start - Now in kit/all/ability/activate
#execute if entity @s[tag=kitActions] run function du-in:kit/asriel/ability/init

#EFFECTS#
execute if entity @s[scores={asrielHitTimer=0..,asrielTimer=1}] run playsound minecraft:asriel.shock master @a ~ ~ ~ 100 1

#Ability functions
execute if entity @s[scores={asrielHitTimer=-1..}] run function du-in:kit/asriel/ability/timer

scoreboard players set @s[scores={asrielTimer=3..}] asrielTimer 0

#Non-Villager
execute if entity @s[tag=!stolen] run function du-in:kit/asriel/constant

#MY PRINCE
#I WEEP
#AT WHAT HAS
#BEFALLEN YOU
#I WILL
#AVENGE YOU
#SURELY