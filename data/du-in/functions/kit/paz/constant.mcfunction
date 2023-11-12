#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/paz/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/paz/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/paz/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump


#Give Weapon
execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/paz/weapon

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/paz/armor

# ITEM #
execute if entity @s[level=1] run function du-in:kit/paz/ability/item

#Run ability#
execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/paz/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/paz/ability/void/init

#Give Fortnite card
execute if entity @s[tag=!stolen,tag=!teamDead,tag=fortniteCard] unless entity @s[scores={triCount=1}] run item replace entity @s hotbar.8 with minecraft:gunpowder{display:{Name:'{"text":"$19 Fortnite Card","color":"gray","bold":true}',Lore:['{"text":"Who wants it?","color":"gray","bold":false}','{"text":"Use at Vending machine to upgrade weapon!","color":"green","bold":true}']},HideFlags:5,Unbreakable:1b,CustomModelData:2019,weaponItem:1b} 1

execute store result score @s[tag=!stolen] triCount run clear @s[tag=!kitMenu] gunpowder 0

#Base Speed#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.1375
#Base Weight#
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.35

#     GET SHIT ON      #
#   ABSOLUTE SHIITER   #