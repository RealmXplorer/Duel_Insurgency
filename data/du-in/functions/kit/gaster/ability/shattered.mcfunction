#clear @a[scores={gasterTimer=79..}]
tag @a[scores={gasterTimer=1..}] add gasterInvisible

effect give @a[scores={gasterTimer=20..}] minecraft:speed 1 1 true
effect give @a[scores={gasterTimer=20..}] minecraft:invisibility 1 255 true

effect give @a[scores={gasterTimer=20..}] minecraft:resistance 1 255 true
effect give @a[scores={gasterTimer=20..}] minecraft:weakness 1 255 true


scoreboard players remove @a[scores={gasterTimer=-1..}] gasterTimer 1

effect give @a[scores={gasterTimer=..2},tag=!gasterShatter] minecraft:strength 2 1 true
effect give @a[scores={gasterTimer=..2},tag=!gasterShatter] minecraft:slowness 2 2 true

execute as @a[scores={gasterTimer=..1}] unless score @s gastSkin matches 1 at @s run particle minecraft:smoke ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
execute as @a[scores={gasterTimer=..1}] if score @s gastSkin matches 1 at @s run particle minecraft:dust 0.75 0.90 1 1 ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force

tag @a[scores={gasterTimer=..0}] add armor
tag @a[scores={gasterTimer=..0}] add kitDone
execute as @a[scores={gasterTimer=..0}] unless score @s gastSkin matches 1 at @s run playsound minecraft:gaster.back master @a ~ ~ ~ 100 1
execute as @a[scores={gasterTimer=..0}] if score @s gastSkin matches 1 at @s run playsound minecraft:ghost.die master @a ~ ~ ~ 100 1
execute as @a[scores={gasterTimer=..0}] at @s run xp set @s[tag=!stolen] 335 levels
tag @a[scores={gasterTimer=..0}] remove gasterInvisible
tag @a[scores={gasterTimer=..0}] remove gasterUse
tag @a[scores={gasterTimer=..0}] remove gasterShatter
attribute @a[scores={gasterTimer=..0},limit=1] minecraft:generic.knockback_resistance base set 0
scoreboard players reset @a[scores={gasterTimer=..0}] gasterTimer