#If suicide
execute unless entity @s[scores={killedByPlayer=1..}] if entity @s[tag=cIngame,scores={killIngame=1..}] run function du-in:kit/all/kill/suicide
#execute unless entity @s[scores={killedByPlayer=1..}] if entity @s[tag=ctfIngame,tag=flagGot] run function du-in:kit/all/kill/ctf_suicide

#If died in normal mode
#execute if entity @s[tag=!ranMode] run function du-in:kit/all/kill/death
function du-in:kit/all/kill/death

#If died in random kit mode
execute if entity @s[tag=ranMode] run function du-in:kit/all/kill/random_death

#execute if score #main map matches 20 if entity @a[tag=cIngame] run function du-in:maps/the_ring/knockout

#End function
scoreboard players reset @s killedByCreeper
scoreboard players reset @s killedByPlayer
scoreboard players reset @s justdied
