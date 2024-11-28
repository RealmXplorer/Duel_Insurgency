#Give effects while dead
effect give @s minecraft:slowness 1 100 true
effect give @s minecraft:invisibility 1 100 true
effect give @s minecraft:resistance 1 100 true
effect give @s minecraft:blindness 2 2 true
effect give @s minecraft:mining_fatigue 1 100 true

#Attribute effects
attribute @s minecraft:jump_strength modifier add team_dead -100 add_value

attribute @s minecraft:attack_damage modifier add team_dead -100 add_value

#Countdown while dead
execute if entity @s[scores={deathCountdown=..0}] run function du-in:ingame/team_death/countdown

#Title
execute unless entity @s[tag=!ranMode] run title @s actionbar {"text":"Open inventory to switch kit!","color":"red","bold":true}

#Timer
scoreboard players remove @s deathCountdown 1
scoreboard players remove @s deathTimer 1

execute if entity @s[scores={deathTimer=..0}] run function du-in:ingame/team_death/end_teamdead