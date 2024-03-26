execute if entity @s[scores={hit=5..}] run function du-in:kit/villager/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

tag @s remove wilde

#Villager Armor# - Moved to kit/all/armor/armor
#execute if entity @s[tag=armor] run function du-in:kit/villager/armor

#Villager Weapon
#execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!gasterInvisible] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/villager/weapon

#Activate Ability - Now in kit/all/ability/activate
#execute if entity @s[tag=kitActions,tag=!stolen] run function du-in:kit/villager/ability/init

#Villager Ability Item
#execute if entity @s[level=1,tag=!stolen] run function du-in:kit/villager/ability/item


execute if entity @s[scores={villagerEmeralds=1..}] run function du-in:kit/villager/emeralds


#Head revert
execute if entity @s[tag=stolen,tag=givenStolen,tag=kitDone] run function du-in:kit/villager/ability/revert
execute if entity @s[scores={vilSansHead=-1..}] run function du-in:kit/villager/ability/sans_head

#Attributes#
attribute @s generic.movement_speed base set 0.13
attribute @s generic.knockback_resistance base set 0.035