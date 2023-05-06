scoreboard players add @s hideSkins 1
execute if entity @s[scores={hideSkins=2..}] run scoreboard players set @s hideSkins 0

clear @s barrier{CustomModelData:101}

execute if entity @s[scores={hideSkins=1}] run tag @a add showSkins
execute unless entity @s[scores={hideSkins=1}] run tag @a remove showSkins
execute if entity @s[scores={hideSkins=1}] run tellraw @s ["",{"text":"Display Skins in kit menu","bold":true,"color":"gold"},{"text":" on","color":"green"}]
execute if entity @s[scores={hideSkins=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.5
execute unless entity @s[scores={hideSkins=1}] run tellraw @s ["",{"text":"Display Skins in kit menu","bold":true,"color":"gold"},{"text":" off","color":"red"}]
execute unless entity @s[scores={hideSkins=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.2

execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items
