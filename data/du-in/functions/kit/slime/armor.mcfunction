execute unless entity @s[scores={slimeSkin=1}] if entity @s[tag=!magma] run function du-in:kit/slime/skins/default
execute unless entity @s[scores={slimeSkin=1}] if entity @s[tag=magma] run function du-in:kit/slime/skins/magma
execute if entity @s[tag=!magma,scores={slimeSkin=1}] run function du-in:kit/slime/skins/slimer
execute if entity @s[tag=magma,scores={slimeSkin=1}] run function du-in:kit/slime/skins/puft
tag @s remove armor