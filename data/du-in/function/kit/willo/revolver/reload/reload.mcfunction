execute if entity @s[scores={willoAmmo=..5}] run scoreboard players add @s willoAmmo 1
title @s actionbar [{"color":"red","score":{"name":"@s","objective":"willoAmmo"}},{"color":"red","text":"/6"}]

clear @s minecraft:copper_nugget 1
scoreboard players set @s willoReloadTimer 0

playsound du-in:kit.willo.revolver_reload master @a ~ ~ ~ 1 1