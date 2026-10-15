#Count down timer
execute unless score Insurgents playerCount matches ..0 if score #main pylonTimer matches 1.. run scoreboard players remove #main pylonTimer 1
execute store result bossbar gast:pylon4 value run scoreboard players get #main pylonTimer

##Traps
    #Warnings for lightning
    function du-in:void/hazard/bridge/warning

    #Fire traps
    function du-in:void/hazard/fire/burn

    #Shock Floor
    execute if entity @e[type=marker,tag=electro] run function du-in:void/hazard/shock/effects

# #Enemy Spawns
# execute unless entity @a[tag=win] if score #main gonerCount <= #gonerMax gonerCount run function du-in:void/spawn/wave/wave_select

#Count currently living goner entities in the match
execute store result score #current gonerCount as @e[type=skeleton,tag=gonerThing] run scoreboard players add #current gonerCount 0

#Target markers ONCE if living goners are below max cap and at least 1 player is 5..20 blocks away
execute if score #current gonerCount < #gonerMax gonerCount as @e[type=marker,tag=gonerSpawn] at @s if entity @a[tag=void,tag=!voidSpect,distance=5..20] run function du-in:void/spawn/wave/wave_select

#Upon Win
execute if entity @a[scores={pylonTimer=..0},tag=partyLeader] run function du-in:void/end/explode
