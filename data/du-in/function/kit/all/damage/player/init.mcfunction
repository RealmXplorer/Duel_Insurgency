advancement revoke @s only du-in:utility/hit_player

#Combos Count
scoreboard players set @s comboHitTimer 0
scoreboard players add @s comboScore 1

#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s[tag=playing,tag=!stolen] run function du-in:kit/all/damage/player/find_kit with storage du-in:main player
execute if entity @s[tag=stolen] run function du-in:kit/villager/damage/player

#Combos Sounds
execute if entity @s[scores={comboScore=3..},tag=playing] run function du-in:kit/all/combo_sounds/init

#Regen Timer reset
function du-in:ingame/regentimer/health_dam

#Vending Mode money
execute if entity @s[tag=vendingMode,predicate=du-in:chance/forty_chance] run function du-in:kit/saac/money/init
