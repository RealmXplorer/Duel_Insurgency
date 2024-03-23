execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

tag @a[tag=!bigChungus,tag=!legMusicOff,tag=!void,tag=!ctfIngame,tag=!cqIngame] add bigChungus
tag @s add chungus

attribute @s minecraft:generic.armor base set 2

execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/chungus/weapon

#execute if entity @s[tag=kitActions] run function du-in:kit/chungus/ability/init

execute if entity @s[level=1] run function du-in:kit/chungus/ability/item

#CHUNGUS#
tag @s remove killLine

#BIG CHUNGUS#
#execute if entity @s[tag=armor] run function du-in:kit/chungus/armor
attribute @s minecraft:generic.movement_speed base set 0.125
#.1
attribute @s generic.knockback_resistance base set 1
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s minecraft:generic.scale base set 1.25
