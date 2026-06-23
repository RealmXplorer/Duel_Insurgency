scoreboard players remove @s cinderMagic 1
execute if entity @s[tag=!void,tag=!empower] positioned ^ ^ ^1.5 run function du-in:kit/cinder/ability/mage/magic
execute if entity @s[tag=!void,tag=empower] positioned ^ ^ ^1.5 run function du-in:kit/cinder/ability/mage/empowered_magic
execute if entity @s[tag=void,tag=!empower] positioned ^ ^ ^1.5 run function du-in:kit/cinder/ability/mage/void/magic
execute if entity @s[tag=void,tag=empower] positioned ^ ^ ^1.5 run function du-in:kit/cinder/ability/mage/void/empowered_magic
execute if entity @s[scores={cinderMagic=..0}] run function du-in:kit/cinder/ability/mage/end