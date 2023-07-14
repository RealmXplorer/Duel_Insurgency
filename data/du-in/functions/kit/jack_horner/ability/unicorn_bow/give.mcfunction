clear @s minecraft:carrot_on_a_stick
tag @s add unicornBow
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:crossbow{display:{Name:'{"text":"Unicorn Horn Crossbow","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to shoot!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Explode on ","color":"dark_gray"}','{"text":"enemy hit. ","color":"dark_gray"}']},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b,HideFlags:1,CustomModelData:100,weaponItem:1b} 1

playsound minecraft:jack_horner.unicorn_horn hostile @a ~ ~ ~ 1 1
tag @s add hornerWeapon
tag @s add magicBag