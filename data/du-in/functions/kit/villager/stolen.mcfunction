#DEFAULT#
execute unless entity @s[scores={villSkin=1..}] run function du-in:kit/villager/armor

#ILLAGER#
execute if entity @s[scores={villSkin=1}] run function du-in:kit/villager/skins/illager

execute if entity @s[scores={villSkin=2}] run function du-in:kit/villager/skins/witch