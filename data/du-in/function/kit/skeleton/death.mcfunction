execute unless entity @s[scores={skeletonMode=1..}] run playsound minecraft:entity.skeleton.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={skeletonMode=1}] run playsound minecraft:entity.stray.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={skeletonMode=2}] run playsound minecraft:entity.bogged.death master @a ~ ~ ~ 3 1