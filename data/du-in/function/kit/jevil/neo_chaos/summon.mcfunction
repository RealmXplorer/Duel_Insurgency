scoreboard players remove @s jevilScythe 1

#Summon Devilsknife
execute if entity @s[scores={jevilScythe=..0}] positioned ^3 ^ ^5 run summon item_display ~ ~4 ~ {Tags:["devilsKnife","projectile","mapSpecific"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,5f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:weapons/devilsknife"}}}
execute if entity @s[scores={jevilScythe=..0}] positioned ^-3 ^ ^5 run summon item_display ~ ~4 ~ {Tags:["devilsKnife","projectile","mapSpecific"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,5f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:weapons/devilsknife"}}}

scoreboard players reset @s[scores={jevilScythe=..0}] jevilScythe