playsound minecraft:asriel.charge master @a ~ ~ ~ 5 1
title @s actionbar {"text":"Next strong hit will damage enemies and become stars","bold":true,"color":"green"}
clear @s wooden_sword{chaosCharge:1b}
scoreboard players set @s weapCount 0
tag @s add asrielCharge
#execute if entity @s[scores={asrielHitLand=320..}] run function du-in:kit/passives/asrielpass/asrielpass