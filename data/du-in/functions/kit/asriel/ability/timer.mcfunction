scoreboard players remove @s asrielHitTimer 1

execute if entity @s[scores={asrielTimer=1}] run playsound minecraft:asriel.shock master @a ~ ~ ~ 100 1
execute if entity @s[scores={asrielTimer=1},tag=!sabotaged] run summon minecraft:lightning_bolt ^ ^ ^5 {Tags:["projectile"]}
execute if entity @s[scores={asrielTimer=1},tag=sabotaged] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["projectile"]}

execute if entity @s[scores={asrielHitTimer=..0}] run function du-in:kit/asriel/ability/end