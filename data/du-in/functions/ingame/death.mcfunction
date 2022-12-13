#If died in normal mode
execute if entity @s[tag=!ranMode] run function du-in:ingame/kill/death

#If died in random kit mode
execute if entity @s[tag=ranMode] run function du-in:ingame/kill/random_death

#If suicide
execute unless entity @s[scores={killedByPlayer=1..}] unless entity @s[scores={killedByCreeper=1..}] if entity @s[tag=cIngame,scores={killIngame=1..}] run function du-in:ingame/kill/suicide

#End function
scoreboard players reset @s killedByCreeper
scoreboard players reset @s killedByPlayer
scoreboard players reset @s justdied
