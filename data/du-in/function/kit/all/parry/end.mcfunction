tag @s remove parry
#attribute @s armor base set 0
#attribute @s armor_toughness base set 0
#attribute @s knockback_resistance base set 0

#Remove modifiers
attribute @s knockback_resistance modifier remove parry
attribute @s armor modifier remove parry
attribute @s armor_toughness modifier remove parry
scoreboard players reset @s parryDuration