effect give @s[scores={Health=20},tag=!sabotaged] minecraft:absorption infinite 0 true
particle minecraft:heart ~ ~ ~ 1 1 1 1 30 force @a
playsound minecraft:chara.ability master @a ~ ~ ~ 1 1 1
effect give @s[scores={Health=..19},tag=!sabotaged] minecraft:instant_health 1 0 true
effect give @s[tag=sabotaged] minecraft:instant_damage 1 0 true

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects
