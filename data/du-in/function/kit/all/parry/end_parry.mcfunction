tag @s remove parry
attribute @s generic.armor base set 0
attribute @s generic.armor_toughness base set 0
attribute @s generic.knockback_resistance base set 0

#Remove modifiers
attribute @s generic.knockback_resistance modifier remove parry
attribute @s generic.armor modifier remove parry
attribute @s generic.armor_toughness modifier remove parry
scoreboard players reset @s parryDuration
#attribute @s generic.armor base set 0