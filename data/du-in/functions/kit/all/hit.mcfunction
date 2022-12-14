advancement revoke @s only du-in:utility/hit

#Combos Count
scoreboard players set @s comboHitTimer 0
scoreboard players add @s comboScore 1

#Combos Sounds
execute if entity @s[scores={comboScore=3..},tag=playing] run function du-in:kit/all/combo_sounds/init


#Villager Emerald System#
    execute if entity @s[scores={kit=8},tag=playing,predicate=du-in:forty_chance] run scoreboard players add @s villagerEmeralds 1
    execute if entity @s[tag=stolen,tag=playing,predicate=du-in:forty_chance] run scoreboard players add @s villagerEmeralds 1

#Saac Money#
    execute if entity @s[scores={kit=1000},tag=playing,predicate=du-in:quarter_chance] run function du-in:kit/saac/money/init
    
#Saber / Hit sounds#
    #Kylo
    execute if entity @s[scores={kit=17},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:kylo.land master @a ~ ~ ~ .5 1
    
    #Vader
    execute if entity @s[scores={kit=18},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1

    #Palps
    execute if entity @s[scores={kit=19},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] unless entity @s[scores={palpsSkin=1}] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1
    execute if entity @s[scores={kit=19,palpTimer=1..},tag=playing,predicate=du-in:weapon_hold] run function du-in:kit/palps/ability/hit

    #Luke
    #execute if entity @s[scores={kit=21},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1

    #Anakin
    #execute if entity @s[scores={kit=22},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1

    #Timekeeper Wilde
    execute if entity @s[scores={kit=23,wildeSkin=3},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:kylo.land master @a ~ ~ ~ .5 1

    #Ralsei
    execute if entity @s[scores={kit=24},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:soundeffect.whack master @a ~ ~ ~ .5 1

    #Clairen
    execute if entity @s[scores={kit=25},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1

    #Cuphead#
    execute if entity @s[scores={kit=21},tag=playing,tag=!stolen] run playsound minecraft:cuphead.snap master @a ~ ~ ~ .5 1

    #Gumball
    execute if entity @s[scores={kit=22},tag=!darwin,tag=playing,predicate=du-in:weapon_hold,predicate=du-in:quarter_chance,tag=!stolen] run playsound minecraft:gumball.bonk master @a ~ ~ ~ .5 1
    execute if entity @s[scores={kit=22},tag=darwin,tag=playing,predicate=du-in:weapon_hold,predicate=du-in:half_chance,tag=!stolen] run playsound minecraft:soundeffect.sillywhack voice @s ~ ~ ~ 100 1

    #Saac
    execute if entity @s[tag=!broken,scores={kit=1000},tag=playing,predicate=du-in:ten_chance] unless entity @s[scores={saacDisTimer=1..}] run function du-in:kit/saac/passive/break

    #Impostor
    execute if entity @s[scores={kit=1003},tag=playing,tag=!stolen] run playsound minecraft:soundeffect.whack master @a ~ ~ ~ .5 1

    #Chungus
    execute if entity @s[scores={kit=42069},tag=playing,tag=!stolen] run playsound minecraft:soundeffect.sillywhack master @a ~ ~ ~ .5 1

#Cuphead Card system#
    scoreboard players add @s[scores={kit=21},tag=!stolen] cardPower 1

#Regen Timer reset
function du-in:ingame/regentimer/health_dam