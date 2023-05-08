execute if entity @s[tag=!gatitoBlade] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{display:{Name:'{"text":"Gatito Blade","color":"dark_gray","bold":true}',Lore:['{"text":"Right click to switch to Gatito Blade!"}']},Unbreakable:1b,CustomModelData:2017,weaponItem:1b} 1

execute if entity @s[tag=gatitoBlade] unless entity @s[scores={pussSkin=1..}] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{display:{Name:'{"text":"Blade of Justice","color":"dark_gray","bold":true}',Lore:['{"text":"Right click to switch to the Blade of Justice!"}']},Unbreakable:1b,CustomModelData:2017,weaponItem:1b} 1
execute if entity @s[scores={pussSkin=1},tag=gatitoBlade] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{display:{Name:'{"text":"Blade of Justice","color":"dark_gray","bold":true}',Lore:['{"text":"Right click to switch to the Blade of Justice!"}']},Unbreakable:1b,CustomModelData:2017,weaponItem:1b} 1

#ff9f21
#0392FF