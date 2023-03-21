execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/asriel/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/asriel/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/asriel/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/asriel/sounds/jump

#EFFECTS#
execute if entity @s[tag=!stolen,tag=!win] run function du-in:kit/asriel/passive/go
execute if entity @s[scores={asrielHitTimer=0..,asrielTimer=1}] run playsound minecraft:asriel.shock master @a ~ ~ ~ 100 1

#ARMOR#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/asriel/armor

#ABILITY#
item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Shocker Breaker","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Summons lightning from the sky where you are looking.","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:110,weaponItem:1b}

execute if entity @s[tag=kitActions] run function du-in:kit/asriel/ability/init
#WEAPON#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!stolen,tag=!teamDead,tag=!asrielSaber] run function du-in:kit/asriel/weapon

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] wooden_sword 0

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.1325

#Ability functions
execute if entity @s[scores={asrielHitTimer=-1..}] run function du-in:kit/asriel/ability/timer

scoreboard players set @s[scores={asrielTimer=3..}] asrielTimer 0

#.1075
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.0375

#MY PRINCE
#I WEEP
#AT WHAT HAS
#BEFALLEN YOU
#I WILL
#AVENGE YOU
#SURELY