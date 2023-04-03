scoreboard players remove @a[scores={gonersKilled=1..}] gonersKilled 1

effect give @a darkness 3 0 true
effect give @s instant_health 1 0 true
execute if entity @s[scores={kit=7},tag=!stolen] run give @s minecraft:arrow 2
execute if entity @s[scores={kit=7},tag=!stolen,predicate=du-in:chance/half_chance] run give @s minecraft:arrow 1

scoreboard players add @s gameGonerKills 1

bossbar set gast:pylon name [{"text":"Pylon Stabilization: ","bold":true,"color":"white"},{"score":{"name":"@r","objective":"gonersKilled"},"color":"red"},{"text":" Goners left","color":"gray"}]

advancement revoke @s only du-in:void/gonerkill