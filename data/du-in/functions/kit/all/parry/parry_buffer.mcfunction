scoreboard players add @s parryCooldown 1
execute if entity @s[scores={parryCooldown=40..},tag=!parried,predicate=!du-in:is_sneaking] run function du-in:kit/all/parry/parry_recharge
execute if entity @s[scores={parryCooldown=60..},tag=parried,predicate=!du-in:is_sneaking] run function du-in:kit/all/parry/parry_recharge