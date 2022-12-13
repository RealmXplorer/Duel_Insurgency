execute if entity @s[tag=!magma] unless entity @s[scores={villSkin=1..}] run function du-in:kit/villager/skins/default
execute if entity @s[tag=!magma,scores={villSkin=1}] run function du-in:kit/villager/skins/illager
execute if entity @s[tag=!magma,scores={villSkin=2}] run function du-in:kit/villager/skins/witch
execute if entity @s[tag=magma] run function du-in:kit/villager/skins/lavager
tag @s remove armor