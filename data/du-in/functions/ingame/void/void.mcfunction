#Test enemy numbers
scoreboard players set #main gonerCount 0
execute as @e[type=skeleton,tag=gonerThing] run scoreboard players add #main gonerCount 1

#Spawn enemies
execute if entity @a[scores={gonersKilled=1..}] if score #main gonerCount matches ..3 if score #main pylonsDestroyed matches 0 run function du-in:ingame/void/spawn/pylon1

execute if entity @a[scores={gonersKilled=1..}] if score #main gonerCount matches ..4 if score #main pylonsDestroyed matches 1 run function du-in:ingame/void/spawn/pylon2
execute if entity @a[scores={gonersKilled=1..}] if score #main gonerCount matches ..5 if score #main pylonsDestroyed matches 2 run function du-in:ingame/void/spawn/pylon3
execute if entity @a[scores={gonersKilled=1..}] if score #main gonerCount matches ..8 if score #main pylonsDestroyed matches 3 run function du-in:ingame/void/spawn/pylon4

#Music
execute as @a[tag=void,tag=!win] run function du-in:music/void/void

#spawnpoint @a 113 5 -91 135

#Give all players night vision
effect give @a[predicate=!du-in:effect/has_night_vision] night_vision infinite 1 true

#Store goners killed in bossbar
execute store result bossbar gast:pylon value run scoreboard players get @r gonersKilled

#Score total players killed here
execute store result score Insurgents matchDeaths run scoreboard players get #main matchDeaths

execute if entity @a[tag=!win,scores={gonersKilled=..0},tag=!waveBreak] if score #main wave matches ..3 run function du-in:ingame/void/wave_end

#Win and Lose conditions
execute if entity @a[tag=!win,scores={gonersKilled=..0}] if score #main wave matches 4.. run function du-in:ingame/void/win

execute if entity @a[scores={gonersKilled=..0}] if score #main wave matches 4.. run function du-in:ingame/void/explode

execute if score #main waveCooldown matches 1.. run function du-in:ingame/void/wave_break

execute unless score #main pylonsDestroyed matches 3 if score #main matchDeaths matches 2.. unless entity @a[tag=win] run function du-in:ingame/void/lose
execute if score #main pylonsDestroyed matches 3 if score #main matchDeaths matches 3.. unless entity @a[tag=win] run function du-in:ingame/void/lose

#execute as @e[type=skeleton,tag=gonerThing] at @s run function du-in:void/goner_specific