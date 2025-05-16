
#Combos Count
scoreboard players set @s comboHitTimer 0
scoreboard players add @s comboScore 1

#execute if entity @s[tag=voidReady] run tellraw @a [{text:"The Void reaffirms its grasp...",bold:true,color:red}]
#tag @s remove voidReady

#Combos Sounds
execute if entity @s[scores={comboScore=3..},tag=playing] run function du-in:kit/all/combo_sounds/init


#Villager Emerald System#
    execute if entity @s[scores={kit=8},tag=playing,predicate=du-in:chance/forty_chance] run scoreboard players add @s villagerEmeralds 1
    execute if entity @s[tag=stolen,tag=playing,predicate=du-in:chance/forty_chance] run scoreboard players add @s villagerEmeralds 1

#Saac Money#
    execute if entity @s[scores={kit=1000},tag=playing,predicate=du-in:chance/quarter_chance] run function du-in:kit/saac/money/init
    
#Cuphead Card system#
    scoreboard players add @s[scores={kit=21},tag=!stolen] cardPower 1

#Palpatine Life Steal
    execute if entity @s[scores={kit=19,palpTimer=1..},tag=playing,predicate=du-in:weapon_hold] run function du-in:kit/palps/ability/hit

#Regen Timer reset
function du-in:ingame/regentimer/health_dam

advancement revoke @s only du-in:void/gonerhit