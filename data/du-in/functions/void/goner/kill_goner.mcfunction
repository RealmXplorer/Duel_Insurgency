scoreboard players remove @a[scores={gonersKilled=1..}] gonersKilled 1

effect give @a darkness 3 0 true
effect give @s instant_health 1 0 true
playsound minecraft:chara.ability master @a ~ ~ ~ 0.5 1.7

execute if entity @s[scores={kit=7},tag=!stolen] run give @s minecraft:arrow 1

execute if entity @s[scores={kit=1001},tag=!fortniteCard] run function du-in:kit/paz/card/give_card
execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/money/init

scoreboard players add @s gameGonerKills 1

execute if predicate du-in:chance/five_chance positioned as @e[type=marker,tag=pylon] run playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 100000 .5

bossbar set gast:pylon name [{"text":"Pylon Stabilization: ","bold":true,"color":"white"},{"score":{"name":"@r","objective":"gonersKilled"},"color":"red"},{"text":" Goners left","color":"gray"}]

advancement revoke @s only du-in:void/gonerkill