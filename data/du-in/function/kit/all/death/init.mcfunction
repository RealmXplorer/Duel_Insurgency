#If suicide
execute unless entity @s[scores={killedByPlayer=1..}] if entity @s[tag=cIngame,scores={killIngame=1..}] run function du-in:kit/all/death/suicide

#If died in normal mode
function du-in:kit/all/death/init_normal

#If died in random kit mode
execute if entity @s[tag=ranMode] run function du-in:kit/all/death/init_random

#End function
scoreboard players reset @s killedByCreeper
scoreboard players reset @s killedByPlayer
scoreboard players reset @s justdied
