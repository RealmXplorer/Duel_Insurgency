clear @s minecraft:carrot_on_a_stick
tag @s add asgoreTrident
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:trident{display:{Name:'{"text":"Asgore\'s Trident","color":"gold","bold":true}',Lore:['{"text":"Wait, how did he get this?","color":"dark_purple","bold":true}']},HideFlags:5,Damage:248,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5.5,Operation:0,UUID:[I;-211992548,1576947317,-1129991297,-262630306],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.35,Operation:0,UUID:[I;-1214682839,817254077,-1521696113,-1915908566],Slot:"mainhand"}],weaponItem:1b} 1
playsound minecraft:jack_horner.bag voice @a ~ ~ ~ 1 1
tag @s add hornerWeapon
tag @s add magicBag