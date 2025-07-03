execute unless entity @s[scores={skeletonMode=1..}] run playsound minecraft:entity.skeleton.step master @a ~ ~ ~ 0.1 1
execute if entity @s[scores={skeletonMode=1}] run playsound minecraft:entity.stray.step master @a ~ ~ ~ 0.1 1
execute if entity @s[scores={skeletonMode=2}] run playsound minecraft:entity.bogged.step master @a ~ ~ ~ 0.1 1

# scoreboard players reset @s step
# scoreboard players reset @s sprint