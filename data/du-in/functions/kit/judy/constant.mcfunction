execute if entity @s[scores={hit=5..}] run function du-in:kit/judy/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/judy/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/judy/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/judy/sounds/jump

#EFFECTS#
effect give @s minecraft:jump_boost 100 0 true

#Ability#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Force Choke","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"I find your lack of","color":"dark_gray"}','{"text":"faith disturbing.","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:130,weaponItem:1b}

#Judy Hopps#
execute if entity @s[tag=armor] run function du-in:kit/judy/armor
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.14
#.12
attribute @s[tag=!stolen] generic.knockback_resistance base set 0