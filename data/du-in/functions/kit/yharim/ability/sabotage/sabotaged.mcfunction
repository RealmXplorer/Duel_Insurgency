#effect give @s minecraft:slowness 3 0 true

attribute @s generic.movement_speed modifier add cbda016f-2c7a-4655-a93f-e336ba656dd8 yharimSpeed -0.025 add_value

attribute @s generic.knockback_resistance modifier add 1234f0a5-4a45-44d9-aa8b-45aed1442cd4 yharimKB -0.07 add_value

attribute @s minecraft:generic.armor modifier add 3b5418c1-b839-4693-af55-f8a28778e52a yharimArmor -2.0 add_value
attribute @s minecraft:generic.attack_damage modifier add 9a9dafc4-1c54-4fd8-b2cb-0b8dd39dab5a yharimAttackSab -0.5 add_value


#attribute @s minecraft:generic.knockback_resistance base set 0
#attribute @s[tag=!deathMark] minecraft:generic.armor base set -2
#attribute @s minecraft:generic.attack_damage base set 0.5
#attribute @s[tag=!parry] minecraft:generic.armor_toughness base set 0