#Test enemy numbers
scoreboard players set #main gonerCount 0
execute as @e[type=skeleton,tag=gonerThing] run scoreboard players add #main gonerCount 1

#Spawn enemies
execute unless entity @a[scores={gonersKilled=30..}] if score #main gonerCount matches ..5 if predicate du-in:half_chance positioned 108 5 -107 run function du-in:ingame/void/spawn/start

#Music
execute as @a[tag=void,tag=!win] run function du-in:music/void/void

#spawnpoint @a 113 5 -91 135

#Give all players night vision
effect give @a[predicate=!du-in:has_night_vision] night_vision infinite 1 true

#Store goners killed in bossbar
execute store result bossbar gast:pylon value run scoreboard players get @r gonersKilled

#Score total players killed here
execute store result score Insurgents matchDeaths run scoreboard players get #main matchDeaths

#Win and Lose conditions
execute if entity @a[tag=!win,scores={gonersKilled=30..}] run function du-in:ingame/void/win

execute if score #main matchDeaths matches 2.. unless entity @a[tag=win] run function du-in:ingame/void/lose