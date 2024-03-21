execute if entity @s[tag=asrielSaber] run scoreboard players add @s asrielSaberTimer 1
clear @s[tag=asrielSaber] minecraft:wooden_sword
execute if entity @s[scores={asrielHitLand=320..}] run function du-in:kit/asriel/passive/damage
execute if entity @s[scores={asrielSaberTimer=80..}] run function du-in:kit/asriel/passive/cooldown
execute if entity @s[tag=!asrielCharge,scores={asrielHitLand=280..319}] run function du-in:kit/asriel/passive/ready