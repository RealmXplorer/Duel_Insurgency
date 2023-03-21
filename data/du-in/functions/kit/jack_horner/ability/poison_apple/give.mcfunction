clear @s minecraft:carrot_on_a_stick
tag @s add poisonApple
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:snowball{CustomModelData:100,display:{Name:'{"text":"Poison Apples","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to throw!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Explode on ","color":"dark_gray"}','{"text":"impact. ","color":"dark_gray"}']},HideFlags:1,weaponItem:1b} 3
tag @s add hornerWeapon
tag @s add magicBag