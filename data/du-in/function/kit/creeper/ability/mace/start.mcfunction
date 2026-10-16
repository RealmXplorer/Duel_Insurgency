#Give Tag
tag @s add creeperMace

#Give Mace
execute unless entity @s[scores={creepSkin=1..}] run item replace entity @s hotbar.0 with minecraft:mace[item_name={text:"Falling Strike",color:gold,bold:true},item_model="du-in:weapons/creeper",unbreakable={},attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:5.4,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2.65,operation:"add_value"}],enchantment_glint_override=true] 1
execute if entity @s[scores={creepSkin=1}] run item replace entity @s hotbar.0 with minecraft:mace[item_name={text:"Falling Gingerbread Strike",color:gold,bold:true},item_model="du-in:weapons/gingerbreadaxe",unbreakable={},attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:5.4,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2.65,operation:"add_value"}],enchantment_glint_override=true] 1

#Start loop
execute unless score #creeperMace running matches 1 run function du-in:kit/creeper/ability/mace/loop