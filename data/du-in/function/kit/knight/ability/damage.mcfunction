damage @s[tag=!inField] 8 magic by @p[scores={kit=37},tag=diving]
execute if entity @p[scores={kit=37},tag=diving,tag=empower] run damage @s 4 magic by @p[scores={kit=37},tag=diving,tag=empower]

execute if entity @s[tag=inField] run playsound minecraft:clairen.deflect master @a ~ ~ ~ 1 1
tag @s remove diveHit