attribute @s[tag=!deathMark] minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s[tag=!parry] minecraft:generic.armor_toughness base set 0
scoreboard players reset @s yharimTimer
execute if entity @s[tag=stolen] run tag @s add kitDone
