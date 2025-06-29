execute if entity @s[distance=..0.75] run damage @s 18 arrow by @n[type=salmon,tag=kratosRock]
execute if entity @s[distance=0.76..1.5] run damage @s 16 arrow by @n[type=salmon,tag=kratosRock]

playsound minecraft:kratos.rock_punch master @a ~ ~ ~ 1 1
particle block_crumble{block_state:"minecraft:packed_mud"} ~ ~1 ~ 0.75 0 0.75 1 20 normal
