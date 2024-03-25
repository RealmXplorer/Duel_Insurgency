scoreboard players set @s parryDuration 30
#scoreboard players set @s parryCooldown 60
tag @s add parry
playsound minecraft:soundeffect.parry master @a ~ ~ ~ .3 1
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ .5 2
playsound minecraft:entity.breeze.deflect master @a ~ ~ ~ 1 1
particle minecraft:sonic_boom ~ ~1 ~ -0.5 0 0 .2 0
effect give @s minecraft:resistance 1 10 true
attribute @s minecraft:generic.armor modifier add b3bae1c5-1089-46d6-b6c2-c59cfa6e5242 parryArmor 100 add_value
attribute @s generic.armor_toughness modifier add 91eea5df-48ec-402a-ad0c-13a07b16a00a parryToughness 100 add_value
attribute @s generic.knockback_resistance modifier add 37007289-4186-4632-85f3-f535c545d04a parryKB 0.1 add_value
title @s title {"text":""}
title @s subtitle {"text":"🛡 Parry! 🛡","color":"blue"}
title @s times 0 15 5
execute if entity @s[tag=!parried] on attacker run function du-in:kit/all/parry/parried
scoreboard players add @s gameParries 1
tag @s add parried