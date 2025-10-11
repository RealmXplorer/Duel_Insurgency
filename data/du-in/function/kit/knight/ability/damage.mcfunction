damage @s[tag=!inField] 8 magic by @p[scores={kit=37},tag=diving]

execute if entity @s[tag=inField] run playsound minecraft:clairen.deflect master @a ~ ~ ~ 1 1
tag @s remove diveHit