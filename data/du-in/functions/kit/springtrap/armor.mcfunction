#DEFAULT#
execute unless entity @s[scores={springSkin=1..}] run function du-in:kit/springtrap/skins/default
execute if entity @s[scores={springSkin=1}] run function du-in:kit/springtrap/skins/stalktrap
execute if entity @s[scores={springSkin=2}] run function du-in:kit/springtrap/skins/clowntrap
tag @s remove armor