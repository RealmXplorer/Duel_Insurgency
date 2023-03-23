execute if entity @s[scores={jump=1..},tag=!stolen] run function du-in:kit/jump

tag @a[tag=!bigChungus,tag=!legMusicOff] add bigChungus
tag @s add chungus

attribute @s minecraft:generic.attack_damage base set 5
attribute @s minecraft:generic.armor base set 2
#CHUNGUS#
tag @s remove killLine

#execute if entity @s[tag=!stolen,scores={hitLand=5..}] run playsound minecraft:soundeffect.sillywhack master @a[tag=playing,tag=!lobby] ~ ~ ~ .5 1
#scoreboard players reset @s[scores={hitLand=5..}] hitLand

#BIG CHUNGUS#
execute if entity @s[tag=armor] run function du-in:kit/chungus/armor
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
#.1
attribute @s generic.knockback_resistance base set 1