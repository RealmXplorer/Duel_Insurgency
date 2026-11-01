#Decreased Health timer for Undead characters
execute if entity @s[tag=!stolen,tag=undead] run scoreboard players add @s regenTimer 1

#Normal Health timer
execute if entity @s[scores={healthTimer=80..},tag=!undead] unless entity @s[scores={kit=19}] run scoreboard players add @s regenTimer 1

#Increased Health timer for Palpatine.
execute if entity @s[scores={healthTimer=100..,kit=19}] run scoreboard players add @s regenTimer 1

#Heal player
execute if entity @s[scores={regenTimer=40..}] run function du-in:ingame/regentimer/heal