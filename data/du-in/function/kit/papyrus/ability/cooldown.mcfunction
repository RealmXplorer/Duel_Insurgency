#Play Sounds
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:papyrus.voice master @a ~ ~ ~ 100 .1
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 100 1

#Set current player to attacking
tag @s add boneAttack

#Summon marker that will do damage
execute as @p[tag=papyrusHit] at @s run summon minecraft:marker ~ ~ ~ {Tags:["papyrusFind","projectile"]}

#Set timer for marker and summon bones
execute as @e[type=marker,tag=papyrusFind,tag=!papyrusStart] at @s run function du-in:kit/papyrus/ability/bones/spawn

#Remove "hit" tag from marked players
tag @a[tag=papyrusHit] remove papyrusHit

#End Ability
#clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 250 levels
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone