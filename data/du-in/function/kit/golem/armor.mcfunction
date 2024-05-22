#DEFAULT#
execute unless entity @s[scores={golemSkin=1..}] run function du-in:kit/golem/skins/default
execute if entity @s[scores={golemSkin=1}] run function du-in:kit/golem/skins/nutcracker
execute if entity @s[scores={golemSkin=2}] run function du-in:kit/golem/skins/tgolem
execute if entity @s[scores={golemSkin=3}] run function du-in:kit/golem/skins/copper
tag @s remove armor