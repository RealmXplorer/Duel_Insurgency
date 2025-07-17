advancement revoke @s only du-in:utility/hit_player
advancement revoke @s only du-in:void/gonerhit

#Combos Count
scoreboard players set @s comboHitTimer 0
scoreboard players add @s comboScore 1

#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s[tag=playing,tag=!stolen] run function du-in:kit/all/damage/player/find_kit with storage du-in:main player
execute if entity @s[tag=stolen] run function du-in:kit/villager/damage/player

#Combos Sounds
execute if entity @s[scores={comboScore=3..},tag=playing] run function du-in:ingame/hit_combo/init

#Regen Timer reset
scoreboard players reset @s healthTimer
scoreboard players set @s regenTimer 0

#Cancel Void start
execute if entity @s[tag=voidReady] run function du-in:void/interact/reaffirm


#Vending Mode money
execute if entity @s[tag=vendingMode,predicate=du-in:chance/forty_chance] unless entity @s[scores={kit=1000..1002}] run function du-in:kit/saac/money/init
