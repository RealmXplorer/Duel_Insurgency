scoreboard players remove @s cinderMagic 1
tag @s add mageShoot
execute if entity @s[tag=!void,tag=!empower] positioned ^ ^ ^1 run function du-in:kit/cinder/ability/mage/magic
execute if entity @s[tag=!void,tag=empower] positioned ^ ^ ^1 run function du-in:kit/cinder/ability/mage/empowered_magic
execute if entity @s[tag=void,tag=!empower] positioned ^ ^ ^1 run function du-in:kit/cinder/ability/mage/void/magic
execute if entity @s[tag=void,tag=empower] positioned ^ ^ ^1 run function du-in:kit/cinder/ability/mage/void/empowered_magic
tag @s remove mageShoot
execute if entity @s[scores={cinderMagic=..0}] run function du-in:kit/cinder/ability/mage/end