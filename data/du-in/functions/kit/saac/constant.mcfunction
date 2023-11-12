#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/saac/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/saac/sounds/jump

#Timers
tag @s[tag=!legMusicOff,tag=!ctfIngame,tag=!cqIngame,tag=!void] add saac
#scoreboard players add @s kickstartKind 1
#scoreboard players set @s[scores={kickstartKind=5..}] kickstartKind 1
scoreboard players remove @s[scores={saacDisTimer=-99..}] saacDisTimer 1

#SAAC Weapon#
execute if entity @s[tag=armor] run function du-in:kit/saac/armor

execute if entity @s[tag=broken,tag=!pussFear,scores={saacDisTimer=..0}] run function du-in:kit/saac/passive/fix

execute if entity @s[tag=!teamDead,tag=!pussFear,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/saac/weapon

#Ability#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"«EPIC» ","color":"gold","bold":true,"italic":true},{"text":"The Great Bamboozle","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Wait what..?","color":"dark_gray"}','{"text":"","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:2000,weaponItem:1b}


execute if entity @s[tag=!void,tag=kitActions,predicate=!du-in:second_held] run function du-in:kit/saac/ability/init
execute if entity @s[tag=void,tag=kitActions,predicate=!du-in:second_held] run function du-in:kit/saac/ability/void/init
execute if entity @s[tag=secKitActions] run function du-in:kit/saac/kickstart/init

execute if entity @s[tag=saacSteal] run function du-in:kit/saac/money/stolen

execute if entity @s[scores={saacMoneyCheck=25}] run item replace entity @s hotbar.8 with sunflower{display:{Name:'{"text":"Quarter","color":"#1AFF00","bold":true,"italic":false}',Lore:['{"text":"You got a quarter on you?"}','{"text":"I only need a couple. "}','{"text":"Please bro lemme have a "}','{"text":"quarter. I seriously need one"}','{"text":"BRO PLEASE MAN"}']},weaponItem:1b,CustomModelData:100} 1
execute if entity @s[scores={saacMoneyCheck=50}] run item replace entity @s hotbar.8 with sunflower{display:{Name:'{"text":"Quarter","color":"#1AFF00","bold":true,"italic":false}',Lore:['{"text":"You got a quarter on you?"}','{"text":"I only need a couple. "}','{"text":"Please bro lemme have a "}','{"text":"quarter. I seriously need one"}','{"text":"BRO PLEASE MAN"}']},weaponItem:1b,CustomModelData:100} 2
execute if entity @s[scores={saacMoneyCheck=75}] run item replace entity @s hotbar.8 with sunflower{display:{Name:'{"text":"Quarter","color":"#1AFF00","bold":true,"italic":false}',Lore:['{"text":"You got a quarter on you?"}','{"text":"I only need a couple. "}','{"text":"Please bro lemme have a "}','{"text":"quarter. I seriously need one"}','{"text":"BRO PLEASE MAN"}']},weaponItem:1b,CustomModelData:100} 3
execute if entity @s[scores={saacMoneyCheck=100..}] run item replace entity @s hotbar.8 with sunflower{display:{Name:'{"text":"Quarter","color":"#1AFF00","bold":true,"italic":false}',Lore:['{"text":"You got a quater on you?"}','{"text":"I only ned a couple. "}','{"text":"Please bro lemme have a "}','{"text":"quarter. I seriously need one"}','{"text":"BRO PLEASE MAN"}']},weaponItem:1b,CustomModelData:100} 4

execute if entity @s[scores={saacMoneyCheck=0}] run item replace entity @s hotbar.8 with air
execute if entity @s[scores={saacMoneyDollar=0}] run item replace entity @s hotbar.7 with air

execute if entity @s[scores={saacMoneyDollar=1}] run item replace entity @s hotbar.7 with minecraft:green_dye{display:{Name:'{"text":"Dollar","color":"#1AFF00","bold":true,"italic":false}',Lore:['{"text":"Dude thank you so much"}','{"text":"Im gonna use this "}','{"text":"at the vending machine"}','{"text":"lmao"}']},CustomModelData:100,weaponItem:1b} 1
execute if entity @s[scores={saacMoneyDollar=2}] run item replace entity @s hotbar.7 with minecraft:green_dye{display:{Name:'{"text":"Dollar","color":"#1AFF00","bold":true,"italic":false}',Lore:['{"text":"Dude thank you so much"}','{"text":"Im gonna use this "}','{"text":"at the vending machine"}','{"text":"lmao"}']},weaponItem:1b,CustomModelData:100} 2
execute if entity @s[scores={saacMoneyDollar=3}] run item replace entity @s hotbar.7 with minecraft:green_dye{display:{Name:'{"text":"Dollar","color":"#1AFF00","bold":true,"italic":false}',Lore:['{"text":"Dude thank you so much"}','{"text":"Im gonna use this "}','{"text":"at the vending machine"}','{"text":"lmao"}']},weaponItem:1b,CustomModelData:100} 3

#Attributes#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
#.1075
attribute @s[tag=!parry] generic.knockback_resistance base set 0.03

#WHO EVEN IS THIS
#HE IS A VERY
#VERY
#INTERESTING 
#INDIVIDUAL
