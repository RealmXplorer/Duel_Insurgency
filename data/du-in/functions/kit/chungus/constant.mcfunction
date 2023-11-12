execute if entity @s[scores={jump=1..},tag=!stolen] run function du-in:kit/jump

tag @a[tag=!bigChungus,tag=!legMusicOff,tag=!void,tag=!ctfIngame,tag=!cqIngame] add bigChungus
tag @s add chungus

#attribute @s minecraft:generic.attack_damage base set 5
attribute @s minecraft:generic.armor base set 2

execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/chungus/weapon

execute if entity @s[tag=kitActions] run function du-in:kit/chungus/ability/init

execute if entity @s[level=1] run function du-in:kit/chungus/ability/item

#CHUNGUS#
tag @s remove killLine

#BIG CHUNGUS#
execute if entity @s[tag=armor] run function du-in:kit/chungus/armor
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
#.1
attribute @s generic.knockback_resistance base set 1