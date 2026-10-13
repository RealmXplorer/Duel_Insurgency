tag @s remove freddyDark
tag @s remove freddyShadow

attribute @s attack_damage modifier remove freddy_darkness
attribute @s movement_speed modifier remove freddy_darkness


attribute @s attack_damage modifier remove freddy_ability
attribute @s movement_speed modifier remove freddy_ability

scoreboard players reset @s lightLevel

#Reset for other players
scoreboard players reset @a darkTimer
tag @a remove freddyDark

#tag @a remove freddyHit