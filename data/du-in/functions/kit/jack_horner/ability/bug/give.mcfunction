clear @s minecraft:carrot_on_a_stick
tag @s add ethicalBug
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:stick{CustomModelData:106,display:{Name:'{"text":"Ethical Bug","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Hit a player 3 times to remove!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I\'m beginning to think you don\'t","color":"dark_gray"}','{"text":"appreciate the value of a life. ","color":"dark_gray"}']},HideFlags:1,weaponItem:1b} 1
##COPYRIGHT
playsound minecraft:jack_horner.bug_get voice @a ~ ~ ~ 1 1
tag @s add magicBag
tag @s remove sabotaged
tag @s add hornerWeapon