#Movement sounds
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/jack_horner/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/jack_horner/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/jack_horner/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jack_horner/sounds/jump

# ARMOR #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/jack_horner/armor

#Weapon#
execute unless entity @s[scores={weapCount=1}] run item replace entity @s[tag=!teamDead,tag=!stolen] hotbar.0 with minecraft:stone_axe{CustomModelData:100,HideFlags:2,weaponItem:1b,display:{Name:"{\"text\":\"Excalibur!\",\"color\":\"gray\",\"bold\":true,\"italic\":true}",Lore:['{"text":"Yea, I couldn\'t get this rock off it","color":"dark_purple","bold":true}','{"text":"but still pretty cool right?","color":"dark_purple","bold":true}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:5.5,Operation:0,UUID:[I;1019791510,1058838203,1083799531,1718107124]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-3,Operation:0,UUID:[I;1019791510,1058838203,1083799531,1718107124]}]} 1

# Ability ITEM #
execute if entity @s[level=1,tag=!magicBag] run function du-in:kit/jack_horner/ability/item

#Use ability
execute if entity @s[tag=kitActions,tag=!magicBag] run function du-in:kit/jack_horner/ability/init
execute if entity @s[tag=kitActions,tag=magicBag] run function du-in:kit/jack_horner/ability/init_magic

scoreboard players add @s magicCount 1
scoreboard players set @s[scores={magicCount=1..}] magicCount 1

#Base movement speed#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135

#Base Weight
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.35