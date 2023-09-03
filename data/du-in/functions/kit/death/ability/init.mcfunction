tag @s add deathAbility
scoreboard players set @s deathAbilityTimer 60
effect clear @s glowing

#Give effects
effect give @s fire_resistance 3 0 true
effect give @s strength 2 0 true

#Give more buffs if marked for Death
effect give @s[tag=deathMark] strength 2 1 true
effect give @s[tag=deathMark] regeneration 2 0 true

#Play audio
playsound minecraft:soundeffect.parry master @a ~ ~ ~ 100 1
playsound minecraft:soundeffect.parry master @a ~ ~ ~ 100 .5
playsound minecraft:soundeffect.parry master @a ~ ~ ~ 100 2

#Send flames
execute positioned ^-4 ^ ^ if entity @s[distance=..25] run function du-in:kit/death/ability/left_raycast
execute positioned ^4 ^ ^ if entity @s[distance=..25] run function du-in:kit/death/ability/right_raycast

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen] 340 levels

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone
#End ability
tag @s remove kitActions