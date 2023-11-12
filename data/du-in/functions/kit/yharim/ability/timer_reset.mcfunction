attribute @s generic.movement_speed modifier remove cbda016f-2c7a-4655-a93f-e336ba656dd8
attribute @s generic.knockback_resistance modifier remove 1234f0a5-4a45-44d9-aa8b-45aed1442cd4
attribute @s minecraft:generic.armor modifier remove 3b5418c1-b839-4693-af55-f8a28778e52a
attribute @s minecraft:generic.armor_toughness modifier remove a9f75a0f-575c-4576-9d89-255823159571 
attribute @s minecraft:generic.attack_damage modifier remove 9a9dafc4-1c54-4fd8-b2cb-0b8dd39dab5a

tag @s remove cooldown
tag @s remove sabotaged
scoreboard players reset @s yharimTimer
execute if entity @s[tag=stolen] run tag @s add kitDone
