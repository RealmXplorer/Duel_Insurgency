particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 50 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 100 1
execute unless entity @s[scores={villSkin=1..}] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 100 .7
execute if entity @s[scores={villSkin=1}] run playsound minecraft:entity.vindicator.celebrate master @a ~ ~ ~ 100 0.75
execute if entity @s[scores={villSkin=2}] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 100 1
execute if entity @s[scores={villSkin=2}] run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 100 1