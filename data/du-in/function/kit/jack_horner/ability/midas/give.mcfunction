clear @s #du-in:ability
tag @s add midasHand
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:stick[item_name={text:"Midas Touch",color:gold,bold:true},lore=[{text:"Hit a player to use!",color:dark_purple,bold:true},[{text:""}],{text:"Turn an enemy player",color:dark_gray},{text:"into gold. ",color:dark_gray}],item_model="du-in:other/midas"] 1

playsound minecraft:jack_horner.midas voice @a ~ ~ ~ 1 1

tag @s add magicBag
tag @s add hornerWeapon