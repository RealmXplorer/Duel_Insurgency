##Traps
    #Warnings for lightning
    function du-in:void/hazard/bridge/warning

    #Fire traps
    function du-in:void/hazard/fire/burn

    #Shock Floor
    execute if entity @e[type=marker,tag=electro] run function du-in:void/hazard/shock/effects

#Enemy Spawns
execute unless entity @a[tag=win] run function du-in:void/spawn/wave/wave1

#Upon Win
execute if entity @a[scores={pylonTimer=..0},tag=partyLeader] run function du-in:void/end/explode

#Lose condition
#execute if score Insurgents playerCount matches ..0 unless entity @a[tag=win] run function du-in:void/end/lose

#Set bossbar max
bossbar set gast:pylon4 max 3600

#Count down timer
execute unless score Insurgents playerCount matches ..0 if score #main pylonTimer matches 1.. run scoreboard players remove #main pylonTimer 1
execute store result bossbar gast:pylon4 value run scoreboard players get #main pylonTimer
