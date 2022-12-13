#Give effects while dead
effect give @s minecraft:slowness 1 100 true
effect give @s minecraft:invisibility 1 100 true
effect give @s minecraft:resistance 1 100 true
effect give @s minecraft:weakness 1 100 true
effect give @s minecraft:jump_boost 1 240 true
effect give @s minecraft:blindness 2 2 true
effect give @s minecraft:mining_fatigue 1 100 true
#clear @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame] #du-in:armor

#Countdown while dead
execute if entity @s[scores={deathCountdown=..0}] run function du-in:ingame/teamdeath/countdown

#execute if entity @s[scores={deathTimer=140}] run function du-in:ingame/teamdeath/countdown
#execute if entity @s[scores={deathTimer=120}] run function du-in:ingame/teamdeath/countdown
#execute if entity @s[scores={deathTimer=100}] run function du-in:ingame/teamdeath/countdown
#execute if entity @s[scores={deathTimer=80}] run function du-in:ingame/teamdeath/countdown
#execute if entity @s[scores={deathTimer=60}] run function du-in:ingame/teamdeath/countdown
#execute if entity @s[scores={deathTimer=40}] run function du-in:ingame/teamdeath/countdown
#execute if entity @s[scores={deathTimer=20}] run function du-in:ingame/teamdeath/countdown

execute unless entity @s[tag=!ranMode] run title @s actionbar {"text":"Open inventory to switch kit!","color":"red","bold":true}

scoreboard players remove @s deathCountdown 1
scoreboard players remove @s deathTimer 1