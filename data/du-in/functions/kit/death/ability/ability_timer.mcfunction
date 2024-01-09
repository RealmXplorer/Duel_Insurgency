scoreboard players remove @s deathAbilityTimer 1

execute if entity @s[scores={deathAbilityTimer=..0}] run function du-in:kit/death/ability/end

#tag @s[scores={deathAbilityTimer=..-1}] remove deathAbility
#Start cooldown
#xp set @s[tag=!stolen] 340 levels

#Switch villager back to their ability
#execute if entity @s[tag=stolen] run tag @s add kitDone
#scoreboard players reset @s[scores={deathAbilitytimer=..-1}] deathAbilityTimer