scoreboard players add @s[tag=!empower] yodaAbsorb 4
execute if entity @s[tag=empower] run scoreboard players add @s yodaAbsorb 6

playsound minecraft:entity.bee.sting master @a ~ ~ ~ 2 .5
playsound du-in:kit.yharim.rage.ready master @a ~ ~ ~ 2 1.75
effect give @s instant_health 1 0 true
effect give @s slowness 1 1 true
particle minecraft:sonic_boom ~ ~0.5 ~ 0 0 0 1 1 force
scoreboard players reset @s yodaDamage