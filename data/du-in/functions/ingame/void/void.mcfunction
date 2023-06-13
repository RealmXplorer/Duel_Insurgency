#Test enemy numbers
scoreboard players set #main gonerCount 0
execute as @e[type=skeleton,tag=gonerThing] run scoreboard players add #main gonerCount 1

#Spawn enemies
execute if entity @a[scores={gonersKilled=1..},tag=partyLeader] run function du-in:ingame/void/spawn/wave/wave1

#execute if entity @a[scores={gonersKilled=1..}] if score #main wave matches 1 run function du-in:ingame/void/spawn/wave/wave1
#execute if entity @a[scores={gonersKilled=1..}] if score #main wave matches 2 run function du-in:ingame/void/spawn/wave/wave2
#execute if entity @a[scores={gonersKilled=1..}] if score #main wave matches 3 run function du-in:ingame/void/spawn/wave/wave3
#execute if entity @a[scores={gonersKilled=1..}] if score #main wave matches 4 run function du-in:ingame/void/spawn/wave/wave4

#Music
execute as @a[gamemode=!spectator,tag=void,tag=!win] run function du-in:ingame/void/player_specific

#spawnpoint @a 113 5 -91 135

#Give all players night vision
effect give @a[predicate=!du-in:effect/has_night_vision,tag=void] night_vision infinite 1 true

#Store goners killed in bossbar
execute store result bossbar gast:pylon value run scoreboard players get @a[tag=partyLeader,tag=void,limit=1] gonersKilled

#Score total players killed here
#execute store result score Insurgents matchDeaths run scoreboard players get #main matchDeaths

execute if entity @a[tag=!win,scores={gonersKilled=..0},tag=!waveBreak,tag=partyLeader] if score #main wave matches ..1 run function du-in:ingame/void/wave_end


#execute if predicate du-in:chance/five_chance positioned as @e[type=marker,tag=pylon] run playsound minecraft:entity.warden.heartbeat master @a[tag=!win] ~ ~ ~ 100000 .5
#scoreboard players remove #main missileCooldown 1
#execute unless entity @a[tag=win] if score #main pylonsDestroyed matches 3 if score #main missileCooldown matches ..0 run function du-in:ingame/void/spawn/missile

execute if score #main pylonsDestroyed matches 1.. as @e[type=armor_stand,tag=missile] at @s anchored eyes run function du-in:ingame/void/goner/missile_chase
execute if score #main pylonsDestroyed matches 1.. as @e[type=armor_stand,tag=missile] at @s if entity @e[tag=projectile,tag=!missile,distance=..1] run function du-in:ingame/void/goner/missile_explode

execute if score #main pylonsDestroyed matches 3.. at @e[type=marker,tag=flamePillarX] run particle minecraft:flame ~ ~ ~ 1 0 0 0 50
execute if score #main pylonsDestroyed matches 3.. at @e[type=marker,tag=flamePillarZ] run particle minecraft:flame ~ ~ ~ 0 0 1 0 50
execute if score #main pylonsDestroyed matches 3.. at @e[type=minecraft:block_display,tag=flamePillar] as @a[gamemode=adventure,distance=..2] run damage @s 5 minecraft:in_fire

execute if score #main pylonsDestroyed matches 3.. if entity @e[type=marker,tag=electro] run function du-in:ingame/void/hazard/shock/effects

#Win and Lose conditions
execute if entity @a[tag=!win,scores={gonersKilled=..0},tag=partyLeader] if score #main wave matches 2.. run function du-in:ingame/void/end/win
execute if entity @a[scores={gonersKilled=..0},tag=partyLeader] if score #main wave matches 2.. run function du-in:ingame/void/end/explode

#execute if score #main waveCooldown matches 1.. run function du-in:ingame/void/wave_break

execute unless score #main pylonsDestroyed matches 3 if score Insurgents playerCount matches ..0 unless entity @a[tag=win] run function du-in:ingame/void/end/lose
execute if score #main pylonsDestroyed matches 3 if score Insurgents playerCount matches ..0 unless entity @a[tag=win] run function du-in:ingame/void/end/lose

#execute as @e[type=skeleton,tag=gonerThing] at @s run function du-in:void/goner_specific