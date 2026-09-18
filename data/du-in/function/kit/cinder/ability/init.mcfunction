#execute unless entity @s[tag=!sabotaged,scores={cinderType=1..}] run function du-in:kit/cinder/ability/sword/init
#execute if entity @s[tag=!sabotaged,scores={cinderType=1}] run function du-in:kit/cinder/ability/spear/init
#execute if entity @s[tag=!sabotaged,scores={cinderType=2}] run function du-in:kit/cinder/ability/mage/init

#Normal Execute
execute if entity @s[tag=!sabotaged] run return run function du-in:kit/cinder/ability/start

#If sabotaged
function du-in:kit/cinder/ability/sabotaged
