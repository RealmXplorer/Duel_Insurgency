#Default sword
execute unless entity @s[scores={pussTimer=1..}] unless entity @s[scores={pussSkin=1}] if entity @s[tag=!gatitoBlade] run item replace entity @s hotbar.0 with minecraft:wooden_sword{display:{Name:"{\"text\":\"The Blade of Justice\",\"color\":\"gray\",\"bold\":true,\"italic\":true}"},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:3.5,Operation:0,UUID:[I;1021276089,1080769028,1088179457,1762458658]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.25,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}],CustomModelData:127,HideFlags:2,weaponItem:1b,Unbreakable:1b} 1
execute if entity @s[scores={pussSkin=1},tag=!gatitoBlade] unless entity @s[scores={pussTimer=1..}] run item replace entity @s hotbar.0 with minecraft:wooden_sword{display:{Name:"{\"text\":\"Extending Blade\",\"color\":\"gray\",\"bold\":true,\"italic\":true}"},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:3.5,Operation:0,UUID:[I;1021276089,1080769028,1088179457,1762458658]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.25,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}],CustomModelData:129,HideFlags:2,weaponItem:1b,Unbreakable:1b} 1
#Default Gatito
execute unless entity @s[scores={pussTimer=1..}] if entity @s[tag=gatitoBlade] run item replace entity @s hotbar.0 with minecraft:wooden_sword{display:{Name:"{\"text\":\"Gatito Blade\",\"color\":\"gray\",\"bold\":true,\"italic\":true}"},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:2.75,Operation:0,UUID:[I;1021276089,1080769028,1088179457,1762458658]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}],CustomModelData:128,HideFlags:2,weaponItem:1b,Unbreakable:1b} 1

#Knockback Sword
execute if entity @s[scores={pussTimer=1..},tag=!gatitoBlade] unless entity @s[scores={pussSkin=1}] run item replace entity @s hotbar.0 with minecraft:wooden_sword{display:{Name:"{\"text\":\"The Blade of Justice\",\"color\":\"gray\",\"bold\":true,\"italic\":true}"},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:3.25,Operation:0,UUID:[I;1021276089,1080769028,1088179457,1762458658]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.25,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}],Enchantments:[{id:"minecraft:knockback",lvl:1s}],CustomModelData:127,HideFlags:2,weaponItem:1b,Unbreakable:1b} 1
execute if entity @s[scores={pussTimer=1..,pussSkin=1},tag=!gatitoBlade] run item replace entity @s hotbar.0 with minecraft:wooden_sword{display:{Name:"{\"text\":\"Extending Blade\",\"color\":\"gray\",\"bold\":true,\"italic\":true}"},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:3.25,Operation:0,UUID:[I;1021276089,1080769028,1088179457,1762458658]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.25,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}],Enchantments:[{id:"minecraft:knockback",lvl:1s}],CustomModelData:129,HideFlags:2,weaponItem:1b,Unbreakable:1b} 1
#Knockback Gatito
execute if entity @s[scores={pussTimer=1..},tag=gatitoBlade] run item replace entity @s hotbar.0 with minecraft:wooden_sword{display:{Name:"{\"text\":\"Gatito Blade\",\"color\":\"gray\",\"bold\":true,\"italic\":true}"},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:2.5,Operation:0,UUID:[I;1021276089,1080769028,1088179457,1762458658]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;150931488,-224377682,-1476605358,-249302083],Slot:"mainhand"}],Enchantments:[{id:"minecraft:knockback",lvl:1s}],CustomModelData:128,HideFlags:2,weaponItem:1b,Unbreakable:1b} 1