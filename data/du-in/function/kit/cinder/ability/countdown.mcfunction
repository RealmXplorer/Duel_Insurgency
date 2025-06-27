scoreboard players remove @s cinderTimer 1

execute if entity @s[scores={cinderTimer=..0},tag=!void] unless entity @s[scores={cinderType=1..}] run function du-in:kit/cinder/ability/sword/explode
execute if entity @s[scores={cinderTimer=..0,cinderType=1}] run function du-in:kit/cinder/ability/spear/heal
execute if entity @s[scores={cinderTimer=..0,cinderType=2},tag=!void] run function du-in:kit/cinder/ability/mage/shoot

execute if entity @s[scores={cinderTimer=..0},tag=void] unless entity @s[scores={cinderType=1..}] run function du-in:kit/cinder/ability/sword/void/explode

scoreboard players reset @s[scores={cinderTimer=..0}] cinderTimer