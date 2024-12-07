advancement revoke @s only du-in:utility/hit_all

#Saber / Hit sounds#
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s[tag=playing] run function du-in:kit/all/damage/all/find_kit with storage du-in:main player

    #Kylo
    #execute if entity @s[scores={kit=17},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:kylo.land master @a ~ ~ ~ .5 1
    
    #Vader
    #execute if entity @s[scores={kit=18},tag=playing,predicate=du-in:weapon_hold,tag=!stolen,tag=!kitActions] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1

    #Palps
    # execute if entity @s[scores={kit=19},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] unless entity @s[scores={palpsSkin=1}] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1
    # execute if entity @s[tag=void,scores={kit=19,palpTimer=1..},tag=playing,predicate=du-in:weapon_hold] run function du-in:kit/palps/ability/hit

    #Timekeeper Wilde
    #execute if entity @s[scores={kit=23,wildeSkin=3},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:kylo.land master @a ~ ~ ~ .5 1

    #Ralsei
    #execute if entity @s[scores={kit=24},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:soundeffect.whack master @a ~ ~ ~ .5 1

    #Pool Player
    #execute if entity @s[scores={kit=7,steveSkin=6},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:soundeffect.whack master @a ~ ~ ~ .5 1

    #Clairen
    #execute if entity @s[scores={kit=25},tag=playing,predicate=du-in:weapon_hold,tag=!stolen] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1

    #Cuphead#
    # execute if entity @s[scores={kit=21},tag=playing,tag=!stolen] run playsound minecraft:cuphead.snap master @a ~ ~ ~ .5 1

    #Gumball
    # execute if entity @s[scores={kit=22},tag=!darwin,tag=playing,predicate=du-in:weapon_hold,predicate=du-in:chance/quarter_chance,tag=!stolen] run playsound minecraft:gumball.bonk master @a ~ ~ ~ .5 1
    # execute if entity @s[scores={kit=22},tag=darwin,tag=playing,predicate=du-in:weapon_hold,predicate=du-in:chance/half_chance,tag=!stolen] run playsound minecraft:soundeffect.sillywhack voice @s ~ ~ ~ 100 1

    #Paz
    # execute if entity @s[scores={kit=1001},tag=playing] run playsound minecraft:paz.fnf.hit master @a ~ ~ ~ 1 1

    #Impostor
    #execute if entity @s[scores={kit=1003},tag=playing,tag=!stolen] run playsound minecraft:soundeffect.whack master @a ~ ~ ~ .5 1

    #Chungus
    #execute if entity @s[scores={kit=42069},tag=playing,tag=!stolen] run playsound minecraft:soundeffect.sillywhack master @a ~ ~ ~ .5 1