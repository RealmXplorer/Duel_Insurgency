execute unless entity @s[scores={skeletonMode=1..}] run playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 2 1 1

execute if entity @s[scores={skeletonMode=1}] run playsound minecraft:entity.stray.hurt master @a ~ ~ ~ 2 1 1

execute if entity @s[scores={skeletonMode=2}] run playsound minecraft:entity.bogged.hurt master @a ~ ~ ~ 2 1 1

