attribute @s minecraft:scale base set 0.5

attribute @s minecraft:block_interaction_range base set 4.15
attribute @s minecraft:armor base set -3.5
attribute @s attack_damage base set 0.8
attribute @s minecraft:movement_efficiency base set 0
attribute @s minecraft:water_movement_efficiency base set 0

playsound minecraft:sans.ability master @a ~ ~ ~ .25 1
playsound minecraft:terraria.drink master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.burp master @a ~ ~ ~ 100 1

scoreboard players set @s shrunkTimer 100

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick

#Start cooldown
xp set @s[tag=!stolen] 60 levels

#End ability
function du-in:kit/jack_horner/ability/end