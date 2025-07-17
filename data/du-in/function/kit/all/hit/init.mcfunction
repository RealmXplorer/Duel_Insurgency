#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Run kit-specific functions in "(kit)/events/kill"
execute at @s run function du-in:kit/all/hit/find_kit with storage du-in:main player

#Break Hit Combo
execute if entity @s[scores={comboScore=3..}] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ .5 2
scoreboard players set @s comboScore 0

#Reset Regen Timer
scoreboard players reset @s healthTimer
scoreboard players set @s regenTimer 0

#Cancel void lock
execute if entity @s[tag=voidReady] run scoreboard players remove #main voidReadyOnline 1
execute if entity @s[tag=voidReady] run tellraw @a [{text:"The Void reaffirms its grasp...",bold:true,color:red}]
advancement revoke @s[tag=voidReady] only du-in:void/interact_void
tag @s[tag=voidReady] remove voidReady