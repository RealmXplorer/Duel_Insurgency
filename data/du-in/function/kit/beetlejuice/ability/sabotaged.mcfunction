function du-in:kit/all/ability/sabotage/effects

#Start timer#
scoreboard players set @s[tag=!empower] showTimer 150
execute if entity @s[tag=empower] run scoreboard players set @s showTimer 200

#Make Beetlejuice small and vulnerable
attribute @s scale base set 0.5
attribute @s armor base set -5
attribute @s armor_toughness base set -5
attribute @s attack_damage base set -1

execute if entity @s[tag=empower] run attribute @s armor base set -15
execute if entity @s[tag=empower] run attribute @s armor_toughness base set -15
execute if entity @s[tag=empower] run attribute @s attack_damage base set -5

#Remove ability from hand
clear @s #du-in:ability

#Start cooldown
tag @s add cooldown

#Remove Beetlejuice exemption
tag @s remove beetleJuice

#Remove empower
tag @s remove empower

#End ability
tag @s remove kitActions