#Default Sword#
execute unless entity @s[scores={gasterTimer=0..}] unless entity @s[scores={villSkin=1..}] unless entity @s[scores={floweyHitTimer=0..}] run item replace entity @s[tag=!magma] hotbar.0 with stone_sword{display:{Name:'{"text":"Deal Breaker","color":"#1CA102","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:107,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.75,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1
#Illager Sword#
execute unless entity @s[scores={gasterTimer=0..}] unless entity @s[scores={floweyHitTimer=0..}] run item replace entity @s[scores={villSkin=1},tag=!magma] hotbar.0 with minecraft:stone_sword{display:{Name:'{"text":"Deal Breaker","color":"blue","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:114,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.75,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1

#Witch Sword#
execute unless entity @s[scores={gasterTimer=0..}] unless entity @s[scores={floweyHitTimer=0..}] run item replace entity @s[scores={villSkin=2},tag=!magma] hotbar.0 with minecraft:stone_sword{display:{Name:'{"text":"Deal Breaker","color":"#bc94f4","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:124,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.75,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1

execute if entity @s[scores={pussTimer=1..}] run function du-in:kit/puss/weapon

#Stolen Slime Sword#
item replace entity @s[tag=magma] hotbar.0 with stone_sword{display:{Name:'{"text":"Magma Blade","color":"#1CA102","bold":true}'},HideFlags:5,Unbreakable:1b,CustomModelData:117,Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.75,Operation:0,UUID:[I;-1208756985,1490898231,-1402752434,913687444],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}]} 1