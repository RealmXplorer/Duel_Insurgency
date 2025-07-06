##Pylons
#Run if on Pylon 1
execute if score #main pylonsDestroyed matches 0 run function du-in:void/pylon/pylon1

#Run if on Pylon 2
execute if score #main pylonsDestroyed matches 1 run function du-in:void/pylon/pylon2

#Run if on Pylon 3
execute if score #main pylonsDestroyed matches 2 run function du-in:void/pylon/pylon3

#Run if on Pylon 4
execute if score #main pylonsDestroyed matches 3 run function du-in:void/pylon/pylon4

##Enemies
    #Test enemy numbers
    scoreboard players set #main gonerCount 0
    execute as @e[type=skeleton,tag=gonerThing] run scoreboard players add #main gonerCount 1
    execute as @e[type=skeleton,tag=gonerThing] if entity @s[scores={jevilTimer=0..}] run function du-in:kit/jevil/ability/spin

    #Spawn enemies
    #execute unless score #main pylonsDestroyed matches 3 unless entity @a[tag=win] if entity @a[scores={gonersKilled=1..},tag=partyLeader] run function du-in:void/spawn/wave/wave1

    #Store goners killed in bossbar
    #execute store result bossbar gast:pylon value run scoreboard players get @a[gamemode=adventure,tag=void,limit=1] gonersKilled

    #Wave test
    #execute unless score #main pylonsDestroyed matches 3 unless score #main pylonsDestroyed matches 0 if entity @a[tag=!win,scores={gonersKilled=..0},tag=!waveBreak,tag=partyLeader] if score #main wave matches ..1 run function du-in:void/wave_end

##Player Functions
    #Player specific functions
    execute as @a[gamemode=!spectator,tag=void,tag=!win] at @s run function du-in:void/player_specific

    #Give all players night vision
    effect give @a[predicate=!du-in:effect/has_night_vision,tag=void] night_vision infinite 1 true

    #Get Player count
    scoreboard players set Insurgents playerCount 0
    execute as @a[gamemode=!spectator] run scoreboard players add Insurgents playerCount 1

#Lose condition
execute if score Insurgents playerCount matches ..0 unless entity @a[tag=win] run function du-in:void/end/lose

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