execute if entity @s[tag=asrielCharge,predicate=du-in:weapon_hold] run function du-in:kit/asriel/passive/damage

execute if entity @s[predicate=du-in:weapon_hold,tag=!asrielCharge] run scoreboard players add @s asrielCharge 1
execute if entity @s[tag=!asrielCharge,scores={asrielCharge=6..}] run function du-in:kit/asriel/passive/ready