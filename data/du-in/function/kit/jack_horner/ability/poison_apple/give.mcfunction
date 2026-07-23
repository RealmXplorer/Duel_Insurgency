clear @s #du-in:ability
tag @s add poisonApple
clear @s stone_axe
item replace entity @s[tag=!empower] hotbar.0 with minecraft:snowball[item_name={text:"Poison Apples",color:gold,bold:true},lore=[{text:"Right click to throw!",color:dark_purple,bold:true},[{text:""}],{text:"Explode on ",color:dark_gray},{text:"impact. ",color:dark_gray}],item_model="du-in:weapons/poisonapple"] 3
execute if entity @s[tag=empower] run item replace entity @s hotbar.0 with minecraft:snowball[item_name={text:"Poison Apples",color:gold,bold:true},lore=[{text:"Right click to throw!",color:dark_purple,bold:true},[{text:""}],{text:"Explode on ",color:dark_gray},{text:"impact. ",color:dark_gray}],item_model="du-in:weapons/poisonapple"] 6

playsound du-in:kit.jack_horner.bag voice @a ~ ~ ~ 1 1
tag @s add hornerWeapon
tag @s add magicBag