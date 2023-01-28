scoreboard players add @s parryCooldown 1
execute if entity @s[scores={parryCooldown=40..},tag=!parried] run function du-in:kit/all/parry_recharge
execute if entity @s[scores={parryCooldown=60..},tag=parried] run function du-in:kit/all/parry_recharge