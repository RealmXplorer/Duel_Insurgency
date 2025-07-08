tag @s add deathAbility
scoreboard players set @s deathAbilityTimer 60
effect clear @s glowing

#Give effects
effect give @s[tag=!sabotaged] fire_resistance 3 0 true
effect give @s[tag=!sabotaged] strength 2 0 true

#Give more buffs if marked for Death
effect give @s[tag=deathMark,tag=!sabotaged] strength 2 1 true
effect give @s[tag=deathMark,tag=!sabotaged] regeneration 2 0 true

#Play audio
playsound minecraft:soundeffect.parry master @a ~ ~ ~ 100 1
playsound minecraft:soundeffect.parry master @a ~ ~ ~ 100 .5
playsound minecraft:soundeffect.parry master @a ~ ~ ~ 100 2
playsound minecraft:sans.ability master @a ~ ~ ~ .25 .95

#Send flames
execute unless entity @s[tag=sabotaged] positioned ^-4 ^ ^ if entity @s[distance=..25] run function du-in:kit/death/ability/left_raycast
execute unless entity @s[tag=sabotaged] positioned ^4 ^ ^ if entity @s[distance=..25] run function du-in:kit/death/ability/right_raycast

execute if entity @s[tag=sabotaged] run function du-in:kit/asgore/ability/contact
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#Remove ability from hand
#clear @s minecraft:carrot_on_a_stick

#Go into cooldown
tag @s add cooldown

tag @s remove sabotaged
#End ability
tag @s remove kitActions