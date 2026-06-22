summon minecraft:lightning_bolt ~ ~ ~4 {Tags:["projectile"]}
summon minecraft:lightning_bolt ~ ~ ~-4 {Tags:["projectile"]}
summon minecraft:lightning_bolt ~4 ~ ~ {Tags:["projectile"]}
summon minecraft:lightning_bolt ~-4 ~ ~ {Tags:["projectile"]}

scoreboard players set @s sauronTimer 100
effect give @s[tag=!empower] speed 3 0 true
effect give @s[tag=!empower] strength 3 1 true

execute if entity @s[tag=empower] run function du-in:kit/sauron/ability/ring/empower
