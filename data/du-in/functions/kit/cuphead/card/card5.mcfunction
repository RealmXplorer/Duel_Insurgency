item replace entity @s hotbar.8 with paper{display:{Name:'{"text":"Card","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Collect 5 to change ability!","color":"dark_purple","bold":true}']},weaponItem:1b,CustomModelData:100} 5
scoreboard players set @s card 5

execute if entity @s[tag=!super] run function du-in:kit/cuphead/card/charged_sound

#item replace entity @s hotbar.8 with paper{display:{Name:'{"text":"Card","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Collect 5 to change ability!","color":"dark_purple","bold":true}']},weaponItem:1b,CustomModelData:100} 4
