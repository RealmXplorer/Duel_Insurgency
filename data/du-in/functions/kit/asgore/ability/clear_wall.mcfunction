#Particle and sounds when wall disappears
particle minecraft:large_smoke ~ ~2 ~ 0.1 0.5 0.1 0 20 force
execute if entity @s[tag=audio] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 10 1

#Destroy firewall
kill @s
