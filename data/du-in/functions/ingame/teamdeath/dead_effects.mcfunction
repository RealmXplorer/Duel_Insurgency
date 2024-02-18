#Give effects while dead
effect give @s minecraft:slowness 1 100 true
effect give @s minecraft:invisibility 1 100 true
effect give @s minecraft:resistance 1 100 true
effect give @s minecraft:blindness 2 2 true
effect give @s minecraft:mining_fatigue 1 100 true

#Attribute effects
attribute @s minecraft:generic.jump_strength modifier add 76c91af4-d86d-4e55-8df9-fd2c247d45db teamDeadJump -100 add
attribute @s minecraft:generic.attack_damage modifier add dd3713c4-bf98-4d8b-bc6f-c5368dd7bd45 teamDeadAttack -100 add

#Countdown while dead
execute if entity @s[scores={deathCountdown=..0}] run function du-in:ingame/teamdeath/countdown

#Title
execute unless entity @s[tag=!ranMode] run title @s actionbar {"text":"Open inventory to switch kit!","color":"red","bold":true}

#Timer
scoreboard players remove @s deathCountdown 1
scoreboard players remove @s deathTimer 1

execute if entity @s[scores={deathTimer=..0}] run function du-in:ingame/teamdeath/end_teamdead