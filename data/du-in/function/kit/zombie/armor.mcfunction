#DEFAULT#
execute unless entity @s[scores={zombSkin=1..}] run function du-in:kit/zombie/skins/default
execute if entity @s[scores={zombSkin=1}] run function du-in:kit/zombie/skins/husk
execute if entity @s[scores={zombSkin=2}] run function du-in:kit/zombie/skins/drowned
execute if entity @s[scores={zombSkin=3}] run function du-in:kit/zombie/skins/tzombie
execute if entity @s[scores={zombSkin=4}] run function du-in:kit/zombie/skins/frank
tag @s remove armor