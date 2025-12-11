#   Run GAMEMODES  #

    # Classic Functions #
        #execute if entity @a[tag=cIngame] run function du-in:ingame/classic/classic
        execute if score #main gamemode matches 1 run function du-in:ingame/classic/classic

    # Deathmatch Function #
        #execute if entity @a[tag=dmIngame] run function du-in:ingame/deathmatch/deathmatch
        execute if score #main gamemode matches 2 run function du-in:ingame/deathmatch/deathmatch

    # KOTH Functions #
        #execute if entity @a[tag=kothIngame] run function du-in:ingame/koth/koth
        execute if score #main gamemode matches 3 run function du-in:ingame/koth/koth

    #CTF Functions #
        #execute if entity @a[tag=ctfIngame] run function du-in:ingame/ctf/ctf
        execute if score #main gamemode matches 4 run function du-in:ingame/ctf/ctf

    # Conquest Functions #
        #execute if entity @a[tag=cqIngame,tag=!win,tag=!lose] run function du-in:ingame/conquest/conquest
        execute if score #main gamemode matches 5 run function du-in:ingame/conquest/conquest

    # HELP ME #
        #execute if entity @a[tag=void] run function du-in:void/void
        execute if score #main gamemode matches 6 run function du-in:void/void

# General Functions #
    # Kill all In Ground items and mark projectiles#
        execute as @e[type=#du-in:projectile] run function du-in:ingame/entities/projectiles

    #Make timer count down
        execute if score #main titleTimer2 matches -99.. run function du-in:ingame/startround/timer/timer


#Asgore Trident thrown
#execute as @e[type=trident] run function du-in:kit/asgore/passive/trident

#Chicken Jockey
#execute as @e[type=chicken,scores={jockeyTimer=0..}] run function du-in:kit/jack_black/ability/chicken
execute as @e[type=chicken,tag=jockeyDuration] run function du-in:kit/jack_black/ability/chicken

#Kratos Rock
execute if entity @e[type=salmon,tag=kratosRock] run function du-in:kit/kratos/ability/rock/track

#Neo Chaos#
execute as @e[type=minecraft:item_display,tag=devilsKnife] at @s run function du-in:kit/jevil/neo_chaos/scythe

#Jack Horner midas
execute as @e[type=#du-in:midas,tag=gold,scores={goldTimer=1..}] run function du-in:kit/jack_horner/ability/midas/timer

##ENTITY TESTS
#Markers
execute as @e[type=marker] at @s run function du-in:ingame/entities/markers

#Armor Stands
execute as @e[type=armor_stand] at @s run function du-in:ingame/entities/armor_stands

#Falling Blocks
execute as @e[type=falling_block] at @s run function du-in:ingame/entities/falling_block

#Block Displays
execute as @e[type=block_display] at @s run function du-in:ingame/entities/block_display

#Poison Apples (MUST BE BELOW MARKER FUNCTIONS)
execute at @e[type=snowball] run summon minecraft:marker ~ ~ ~ {Tags:["poisonApple","mapSpecific"]}

#Test when it shifts to day or night
execute if score #main dayNightSetting matches 1 run function du-in:ingame/scheduled/ambience/night_init

#Dev Mode end game
execute if entity @a[tag=devMode,tag=partyLeader] if entity @a[scores={thrownBarrier=1..}] run tag @a add win

#Override music for Saul and Big Chungus#
execute if score #main music matches 1 as @a[tag=!legMusicOff] at @s run function du-in:music/ingame/easter_egg

# SPAM CLICK MODE #
    #execute if score #spamClick gamemode matches 1 as @a[gamemode=adventure] run attribute @s minecraft:attack_speed base set 100