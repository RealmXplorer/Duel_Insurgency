
#Death ability
execute if entity @s[scores={deathAbilityTimer=0..}] run function du-in:kit/death/ability/ability_timer

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/death/constant