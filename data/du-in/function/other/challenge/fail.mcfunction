say ERROR: MISSING FILE!
#scoreboard players add @a LEVEL_OF_FUN 1
execute at @a run playsound du-in:gaster.ability master @a ~ ~ ~
execute if entity @a[scores={FRIEND=2..}] at @a run playsound minecraft:me master @a ~ ~ ~
execute as @a[scores={FRIEND=2..}] run tellraw @s {"text":"Can't get rid of me this time!"}