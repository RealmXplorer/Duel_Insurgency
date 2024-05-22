#Movement sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/paz/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/paz/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/paz/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump


#Give Weapon
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/paz/weapon

# ARMOR #
#execute if entity @s[tag=armor] run function du-in:kit/paz/armor

# ITEM #
# execute if entity @s[level=1] run function du-in:kit/paz/ability/item

#Run ability#
#execute if entity @s[tag=kitActions] run function du-in:kit/paz/ability/init

#Give Fortnite card
execute if entity @s[tag=fortniteCard,tag=!teamDead] unless entity @s[scores={triCount=1}] run item replace entity @s hotbar.8 with minecraft:gunpowder[custom_name='{"text":"$19 Fortnite Card","color":"gray","bold":true}',lore=['{"text":"Who wants it?","color":"gray","bold":false}','{"text":"Use at Vending machine to upgrade weapon!","color":"green","bold":true}'],custom_model_data=2019] 1

execute store result score @s triCount run clear @s gunpowder 0

#Attributes
attribute @s minecraft:generic.movement_speed base set 0.1375
attribute @s generic.knockback_resistance base set 0.35

    #Size
    execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/tiny

#     GET SHIT ON      #
#   ABSOLUTE SHIITER   #