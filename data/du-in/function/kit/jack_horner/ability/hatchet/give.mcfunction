#clear @s minecraft:carrot_on_a_stick
tag @s add theHatchet
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:stone_axe[item_name={text:"The HATCHET!",color:gold,bold:true},lore=[{text:"Don't get hit with it!",color:dark_purple,bold:true}],max_damage=1,attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:11,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand"}]] 1
playsound minecraft:jack_horner.bag voice @a ~ ~ ~ 1 1
tag @s add hornerWeapon
tag @s add magicBag