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
        execute if entity @a[tag=cqIngame,tag=!win,tag=!lose,tag=!winend] run function du-in:ingame/conquest/conquest

    # Extraction Functions #
        #execute if entity @a[tag=exIngame] run function du-in:ingame/extraction/extraction

#Give Night Vision on Better End map.
execute if score #main map matches 12 run effect give @a[tag=cmap,tag=!win,tag=!lose,tag=!winend] minecraft:night_vision infinite 1 true

# General Functions #
    # Random death  Mode clear #
        execute if entity @a[tag=ranMode] as @e[type=player,tag=deathTest,distance=0..] positioned 216 -100 40 run function du-in:ingame/random_death

    # Add 1 to spawnpoint score #
        #scoreboard players add @r[predicate=du-in:half_chance] spawnpoint 1

    # SPAM CLICK MODE #
        execute if entity @a[tag=partyLeader,tag=spamClick] as @a[tag=playing] run attribute @s minecraft:generic.attack_speed base set 100
    
    # Kill all In Ground items #
        kill @e[type=!player,type=!wandering_trader,type=!marker,type=!armor_stand,nbt={inGround:1b}]


    #Make timer count down
        execute if score #main titleTimer2 matches -99.. run function du-in:ingame/startround/timer/timer

execute positioned as @e[type=marker,tag=ventBlock] run function du-in:maps/vents/init





#Clairen ability field functionality
    execute as @e[type=marker,tag=clairenField] at @s run function du-in:kit/clairen/ability/field

    #Give effects when in field
    effect give @a[tag=inField] minecraft:strength 1 0 true
    effect give @a[tag=inField] minecraft:glowing 1 0 true

    #Tag projectiles
    tag @e[type=arrow,tag=!projectile] add projectile
    tag @e[type=trident,tag=!projectile] add projectile
    tag @e[type=minecraft:snowball,tag=!projectile] add projectile

    #Run for when players are in Clairen's field
    execute at @e[type=marker,tag=clairenField] at @a[gamemode=!spectator] run function du-in:kit/clairen/ability/add_infield


#
execute if entity @a[scores={kit=1000..1001}] as @e[type=painting] run function du-in:ingame/vending_machine/painting


#Run as Asgore's firewalls
execute as @e[type=armor_stand,tag=asgoreFire,scores={asgoreFire=-99..}] at @s run function du-in:kit/asgore/ability/fire_wall

execute as @e[type=block_display,tag=flame,scores={flameTimer=-99..}] at @s run function du-in:kit/death/ability/timer

#Countdown Vent score.
scoreboard players add @a[tag=sus,scores={ventCooldown=..61}] ventCooldown 1




#Meeting Spot for Impostor
    execute if entity @e[type=marker,tag=meetingSpot,scores={impostTimer=0..}] run function du-in:kit/impostor/ability/meeting
    execute as @e[type=marker,tag=meetingSpot,scores={impostTimer=0..}] at @s run function du-in:kit/impostor/ability/meeting_spot

#Kill graves when projectiles are near or when the sand is far from the stand
    execute as @e[type=armor_stand,tag=grave] at @s run function du-in:kit/zombie/ability/grave_stand
    execute as @e[type=falling_block,tag=grave] at @s unless entity @e[type=minecraft:armor_stand,tag=grave,distance=..2] run function du-in:kit/zombie/ability/grave_sand

#Slime and magma Cubes after Slime death
    execute as @e[type=slime,scores={slimeTimer=-99..}] at @s run function du-in:kit/slime/death/slime
    execute as @e[type=magma_cube,scores={slimeTimer=-99..}] at @s run function du-in:kit/slime/death/magma

    #Teleport small slimes into the void.
    tp @e[type=minecraft:slime,nbt={Size:0}] 216 -100 40
    tp @e[type=minecraft:magma_cube,nbt={Size:0}] 216 -100 40

#Test for and kill stray Kylo ability markers
execute as @e[type=minecraft:marker,tag=kyloHitPos] run function du-in:kit/kylo/ability/marker

#Flowey Ability burrow stem
execute as @e[type=falling_block,tag=floweyStem] at @s run function du-in:kit/flowey/ability/stem

#Papyrus Ability bones
execute as @e[type=marker,scores={papyrusHitTimer=-1..},tag=papyrusFind] at @s run function du-in:kit/papyrus/ability/bones


execute as @e[type=!player,tag=gold,scores={goldTimer=1..}] run function du-in:kit/jack_horner/ability/midas/timer

execute at @e[type=minecraft:marker,tag=poisonApple] unless entity @e[type=minecraft:snowball,distance=..2] run function du-in:kit/jack_horner/ability/poison_apple/explode

kill @e[type=minecraft:marker,tag=poisonApple]
execute at @e[type=minecraft:snowball] run summon minecraft:marker ~ ~ ~ {Tags:["poisonApple"]}