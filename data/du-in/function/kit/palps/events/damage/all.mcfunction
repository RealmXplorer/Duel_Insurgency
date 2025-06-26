execute if entity @s[predicate=du-in:weapon_hold,tag=!stolen] unless entity @s[scores={palpsSkin=1}] run playsound minecraft:saber.land master @a ~ ~ ~ .5 1
execute if entity @s[tag=void,scores={palpTimer=1..},predicate=du-in:weapon_hold] run function du-in:kit/palps/ability/hit
