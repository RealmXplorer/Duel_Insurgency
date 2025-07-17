#Decreased Health timer for Undead characters
execute if entity @s[tag=!stolen,tag=undead] run scoreboard players add @s regenTimer 1

#Normal Health timer
execute if entity @s[scores={healthTimer=200..},tag=!undead] unless entity @s[scores={kit=19}] run scoreboard players add @s regenTimer 1

#Increased Health timer for Palpatine.
execute if entity @s[scores={healthTimer=220..,kit=19}] run scoreboard players add @s regenTimer 1

#Heal player
execute if entity @s[scores={regenTimer=100..}] run function du-in:ingame/regentimer/heal