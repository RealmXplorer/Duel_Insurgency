scoreboard players remove @s asrielHitTimer 1

execute if entity @s[scores={asrielHitTimer=0..,asrielTimer=1},tag=!sabotaged] run summon minecraft:lightning_bolt ^ ^ ^5 {Tags:["projectile"]}
execute if entity @s[scores={asrielHitTimer=0..,asrielTimer=1},tag=sabotaged] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["projectile"]}

tag @s[scores={asrielHitTimer=..1},tag=sabotaged] remove sabotaged
tag @s[scores={asrielHitTimer=..1},tag=empower] remove empower
tag @s[scores={asrielHitTimer=..1},tag=stolen] add kitDone

scoreboard players reset @s[scores={asrielHitTimer=..0}] asrielHitTimer