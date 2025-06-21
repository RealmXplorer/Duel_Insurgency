execute unless entity @s[tag=!sabotaged,scores={cinderType=1..}] run function du-in:kit/cinder/ability/sword/init
execute if entity @s[tag=!sabotaged,scores={cinderType=1}] run function du-in:kit/cinder/ability/spear/init
execute if entity @s[tag=!sabotaged,scores={cinderType=2}] run function du-in:kit/cinder/ability/mage/init

execute if entity @s[tag=sabotaged] run function du-in:kit/cinder/ability/sabotaged