clear @s #du-in:clear
#scoreboard players set @s weapCount 0
function du-in:kit/all/weapon/init
item replace entity @s[scores={kit=7}] hotbar.2 with arrow 2
tag @s remove deathTest