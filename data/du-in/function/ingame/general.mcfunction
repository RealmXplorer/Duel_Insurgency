#   Run GAMEMODES  #

    # Classic Functions #
        execute if entity @a[tag=cIngame] run function du-in:ingame/classic/classic
    
    # Deathmatch Function #
        execute if entity @a[tag=dmIngame] run function du-in:ingame/deathmatch/deathmatch

    # KOTH Functions #
        execute if entity @a[tag=kothIngame] run function du-in:ingame/koth/koth

    #CTF Functions #
        execute if entity @a[tag=ctfIngame] run function du-in:ingame/ctf/ctf

    # Conquest Functions #
        execute if entity @a[tag=cqIngame,tag=!win,tag=!lose] run function du-in:ingame/conquest/conquest

    # HELP ME #
        execute if entity @a[tag=void] run function du-in:void/void

# General Functions #
    # Kill all In Ground items and mark projectiles#
        execute as @e[type=arrow] run function du-in:ingame/entities/projectiles
        execute as @e[type=trident] run function du-in:ingame/entities/projectiles
        execute as @e[type=snowball] run function du-in:ingame/entities/projectiles

    #Make timer count down
        execute if score #main titleTimer2 matches -99.. run function du-in:ingame/startround/timer/timer


#Asgore Trident thrown
execute as @e[type=trident] on origin run function du-in:kit/asgore/passive/trident

#Asgore's fire walls
execute as @e[type=armor_stand,tag=asgoreFire,scores={asgoreFire=-99..}] at @s run function du-in:kit/asgore/ability/fire_wall

#Death's fire cone
execute as @e[type=block_display,tag=flame,scores={flameTimer=-99..}] at @s run function du-in:kit/death/ability/timer

execute as @e[type=chicken,scores={jockeyTimer=0..}] run function du-in:kit/jack_black/ability/chicken

execute if entity @e[type=salmon,tag=kratosRock] run function du-in:kit/kratos/ability/rock/track

execute as @e[type=armor_stand,tag=susieAbility,scores={susieTimer=0..}] at @s run function du-in:kit/susie/ability/buster/timer

#Kill graves when projectiles are near or when the sand is far from the stand
    execute as @e[type=falling_block] at @s run function du-in:ingame/entities/falling_block

#Jack Horner midas
execute as @e[type=!player,tag=gold,scores={goldTimer=1..}] run function du-in:kit/jack_horner/ability/midas/timer

#Markers
execute as @e[type=marker] at @s run function du-in:ingame/entities/markers

#Poison Apples (MUST BE BELOW MARKER FUNCTIONS)
execute at @e[type=snowball] run summon minecraft:marker ~ ~ ~ {Tags:["poisonApple","mapSpecific"]}

#Papyrus Stand Particles
execute as @e[type=armor_stand,scores={papyrusHitTimer=-1..}] at @s run function du-in:kit/papyrus/stand

#Test when it shifts to day or night
execute if predicate du-in:ambience/night_start if score #main dayNightSetting matches 1 run function du-in:ingame/scheduled/ambience/night_start
execute if predicate du-in:ambience/night_end if score #main dayNightSetting matches 1 run function du-in:ingame/scheduled/ambience/night_end

#Dev Mode end game
execute if entity @a[scores={thrownBarrier=1..}] if entity @a[tag=devMode,tag=partyLeader] run tag @a add win