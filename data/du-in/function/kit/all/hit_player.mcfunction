advancement revoke @s only du-in:utility/hit_player

#Combos Count
scoreboard players set @s comboHitTimer 0
scoreboard players add @s comboScore 1

#Combos Sounds
execute if entity @s[scores={comboScore=3..},tag=playing] run function du-in:kit/all/combo_sounds/init

#Asriel Saber#
execute if entity @s[tag=asrielCharge] run function du-in:kit/asriel/passive/damage

#Villager Emerald System#
    execute if entity @s[scores={kit=8}] run function du-in:kit/villager/hit
    execute if entity @s[tag=stolen] run function du-in:kit/villager/hit

#Saac Money#
    execute if entity @s[scores={kit=1000},tag=playing] run function du-in:kit/saac/passive/hit

#Cuphead Card system#
    scoreboard players add @s[scores={kit=21},tag=!stolen] cardPower 1

#Palpatine Life Steal
    execute if entity @s[scores={kit=19,palpTimer=1..},tag=playing,predicate=du-in:weapon_hold] run function du-in:kit/palps/ability/hit

#Regen Timer reset
function du-in:ingame/regentimer/health_dam