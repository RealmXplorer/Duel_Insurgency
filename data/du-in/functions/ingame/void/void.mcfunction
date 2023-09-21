#Run if on Pylon 4
execute if score #main pylonsDestroyed matches 3 run function du-in:ingame/void/void_pylon4

#execute as @e[type=skeleton,tag=inField] run function du-in:kit/clairen/ability/field_effects

#Test enemy numbers
scoreboard players set #main gonerCount 0
execute as @e[type=skeleton,tag=gonerThing] run scoreboard players add #main gonerCount 1

#Spawn enemies
execute unless score #main pylonsDestroyed matches 3 unless entity @a[tag=win] if entity @a[scores={gonersKilled=1..},tag=partyLeader] run function du-in:ingame/void/spawn/wave/wave1

#Player specific functions
execute as @a[gamemode=!spectator,tag=void,tag=!win] run function du-in:ingame/void/player_specific


#Give all players night vision
effect give @a[predicate=!du-in:effect/has_night_vision,tag=void] night_vision infinite 1 true

#Store goners killed in bossbar
execute store result bossbar gast:pylon value run scoreboard players get @a[gamemode=adventure,tag=void,limit=1] gonersKilled

#Get Player count
scoreboard players set Insurgents playerCount 0
execute as @a[gamemode=!spectator] run scoreboard players add Insurgents playerCount 1

#Wave test
execute unless score #main pylonsDestroyed matches 3 unless score #main pylonsDestroyed matches 0 if entity @a[tag=!win,scores={gonersKilled=..0},tag=!waveBreak,tag=partyLeader] if score #main wave matches ..1 run function du-in:ingame/void/wave_end


#Spawn missiles, starting at Pylon 2
#execute if score #main pylonsDestroyed matches 1.. as @e[type=armor_stand,tag=missile] at @s anchored eyes run function du-in:ingame/void/goner/missile_chase
#execute if score #main pylonsDestroyed matches 1.. as @e[type=armor_stand,tag=missile] at @s if entity @e[tag=projectile,tag=!missile,distance=..1] run function du-in:ingame/void/goner/missile_explode

#Start Fire traps, starting at Pylon 3
execute if score #main pylonsDestroyed matches 2.. at @e[type=marker,tag=flamePillarX] run particle minecraft:flame ~ ~ ~ 1.2 0.2 0.1 0 50
execute if score #main pylonsDestroyed matches 2.. at @e[type=marker,tag=flamePillarZ] run particle minecraft:flame ~ ~ ~ 0.1 0.2 1.2 0 50
execute if score #main pylonsDestroyed matches 2.. at @e[type=minecraft:block_display,tag=flamePillar] as @a[gamemode=adventure,distance=..2] run damage @s 5 minecraft:in_fire

execute if score #main pylonsDestroyed matches 1.. at @e[type=marker,tag=bridgeX] run particle minecraft:smoke ~ ~ ~ 3 0.2 0.1 0 20
execute if score #main pylonsDestroyed matches 1.. at @e[type=marker,tag=bridgeZ] run particle minecraft:smoke ~ ~ ~ 0.1 0.2 3 0 20

#Win and Lose conditions for pre-Pylon 4
execute if score #main pylonsDestroyed matches 0 if entity @a[tag=!win,scores={gonersKilled=..0},tag=partyLeader] run function du-in:ingame/void/end/win
execute if score #main pylonsDestroyed matches 0 if entity @a[scores={gonersKilled=..0},tag=partyLeader] run function du-in:ingame/void/end/explode

execute unless score #main pylonsDestroyed matches 3 unless score #main pylonsDestroyed matches 0 if entity @a[tag=!win,scores={gonersKilled=..0},tag=partyLeader] if score #main wave matches 2.. run function du-in:ingame/void/end/win
execute unless score #main pylonsDestroyed matches 3 unless score #main pylonsDestroyed matches 0 if entity @a[scores={gonersKilled=..0},tag=partyLeader] if score #main wave matches 2.. run function du-in:ingame/void/end/explode


execute unless score #main pylonsDestroyed matches 3 if score Insurgents playerCount matches ..0 unless entity @a[tag=win] run function du-in:ingame/void/end/lose

#DARKNESS CREEPING
#WATCHFUL EYES
#DARKNESS CREEPING
#TELLING LIES


#AND IN THE UMBRAL RAYS IT BLEEDS
#LIGHT ESCAPES AND EVIL FEEDS


#DARKNESS CREEPING
#CURSED EARS
#DARKNESS CREEPING
#KNOWS YOUR FEARS


#SHADOWS BREAK AND VOID THEY WEAVE
#BRIGHTNESS PURGED TO DARKNESS CLEAVE