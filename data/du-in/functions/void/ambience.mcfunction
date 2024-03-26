execute if entity @s[scores={heartBeat=1},tag=!win] unless entity @a[scores={gonersKilled=..15}] positioned as @e[type=marker,tag=pylon] run playsound minecraft:entity.warden.heartbeat master @a[tag=!win] ~ ~ ~ 100000 .5
execute if entity @s[scores={heartBeat=1},tag=!win] if entity @a[scores={gonersKilled=..15}] positioned as @e[type=marker,tag=pylon] run playsound minecraft:entity.warden.heartbeat master @a[tag=!win] ~ ~ ~ 100000 .75
execute if entity @s[scores={heartBeat=1},tag=!win] positioned as @e[type=marker,tag=pylon] run particle minecraft:end_rod ~ ~ ~ 0 6 0 0.1 100
execute if entity @s[scores={heartBeat=1},tag=!win] positioned as @e[type=marker,tag=pylon] run particle minecraft:ash ~ ~ ~ 6 8 6 0.4 300

execute unless entity @a[scores={gonersKilled=..15}] run scoreboard players reset @s[scores={heartBeat=60..}] heartBeat
execute if entity @a[scores={gonersKilled=..15}] run scoreboard players reset @s[scores={heartBeat=30..}] heartBeat
