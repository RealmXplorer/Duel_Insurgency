#Set duration of Parry
scoreboard players set @s parryDuration 30

#Marked as parry
tag @s add parry

#Play effects
playsound minecraft:soundeffect.parry master @a ~ ~ ~ .3 1
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ .5 2
playsound minecraft:entity.breeze.deflect master @a ~ ~ ~ 1 1
particle minecraft:sonic_boom ~ ~1 ~ -0.5 0 0 .2 0

#Give resistance
effect give @s minecraft:resistance 1 10 true

#Clear negative effects
execute if entity @s[predicate=du-in:effect/has_levitation] run function du-in:kit/all/parry/effect_clear
execute if entity @s[predicate=du-in:effect/is_poisoned] run function du-in:kit/all/parry/effect_clear
execute if entity @s[predicate=du-in:effect/is_withered] run function du-in:kit/all/parry/effect_clear

#Give attributes
attribute @s minecraft:armor modifier add parry 100 add_value
attribute @s armor_toughness modifier add parry 100 add_value
attribute @s knockback_resistance modifier add parry 0.1 add_value

#Run normal titles
execute unless entity @s[scores={kit=32}] run title @s title {text:""}
execute unless entity @s[scores={kit=32}] run title @s subtitle {text:"🛡 Parry! 🛡",color:blue}
title @s times 0 15 5
execute unless entity @s[scores={kit=32}] if entity @s[tag=!parried] on attacker run function du-in:kit/all/parry/parried

#Run Aang Parries
execute if entity @s[scores={kit=32}] if entity @s[tag=!parried] run function du-in:kit/avatar/earth/parry

#Add to parry score
scoreboard players add @s gameParries 1

#Marked as landed parry
tag @s add parried