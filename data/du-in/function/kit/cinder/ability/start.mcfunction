#If Golem is close to enemy#
playsound minecraft:sans.ability master @a ~ ~ ~ .05 1
playsound minecraft:cinder.magic master @a ~ ~ ~ 100 1
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 100 force

scoreboard players set @s cinderTimer 30
effect give @s slowness 1 3 true 

attribute @s armor modifier add cinder_charge 4.0 add_value

#Finish Ability#
#clear @s carrot_on_a_stick
tag @s add cooldown
tag @s add cinderUsed
tag @s remove kitActions