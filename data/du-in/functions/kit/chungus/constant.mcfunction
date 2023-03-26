execute if entity @s[scores={jump=1..},tag=!stolen] run function du-in:kit/jump

tag @a[tag=!bigChungus,tag=!legMusicOff,tag=!void] add bigChungus
tag @s add chungus

#attribute @s minecraft:generic.attack_damage base set 5
attribute @s minecraft:generic.armor base set 2

execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run item replace entity @s hotbar.0 with minecraft:stick{CustomModelData:107,display:{Name:"{\"text\":\"Carrot\",\"color\":\"white\",\"bold\":true}"},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:5,Operation:0,UUID:[I;1061771027,1040866433,1005730151,1456929314]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:40,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}],weaponItem:1b,isWeapon:1b} 1

execute if entity @s[tag=kitActions] run function du-in:kit/chungus/ability/init

execute if entity @s[level=1] run function du-in:kit/chungus/ability/item

#CHUNGUS#
tag @s remove killLine

#BIG CHUNGUS#
execute if entity @s[tag=armor] run function du-in:kit/chungus/armor
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
#.1
attribute @s[tag=!pussFear] generic.knockback_resistance base set 1