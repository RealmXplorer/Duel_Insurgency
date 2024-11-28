execute if entity @s[scores={villagerEmeralds=1}] run attribute @s minecraft:attack_speed base set 4.15
execute if entity @s[scores={villagerEmeralds=2}] run attribute @s minecraft:attack_speed base set 4.30
execute if entity @s[scores={villagerEmeralds=3}] run attribute @s minecraft:attack_speed base set 4.45
execute if entity @s[scores={villagerEmeralds=4..}] run attribute @s minecraft:attack_speed base set 4.60

item replace entity @s[scores={villagerEmeralds=1}] hotbar.8 with emerald[custom_name='{"text":"Stolen Emeralds","color":"#50B81C","italic":false,"bold": true}',lore=['{"text":"Increases attack speed,","color":"red","italic":false}','{"text":"with every stolen emerald","color":"red","italic":false}']] 1
item replace entity @s[scores={villagerEmeralds=2}] hotbar.8 with emerald[custom_name='{"text":"Stolen Emeralds","color":"#50B81C","italic":false,"bold": true}',lore=['{"text":"Increases attack speed,","color":"red","italic":false}','{"text":"with every stolen emerald","color":"red","italic":false}']] 2
item replace entity @s[scores={villagerEmeralds=3}] hotbar.8 with emerald[custom_name='{"text":"Stolen Emeralds","color":"#50B81C","italic":false,"bold": true}',lore=['{"text":"Increases attack speed,","color":"red","italic":false}','{"text":"with every stolen emerald","color":"red","italic":false}']] 3
item replace entity @s[scores={villagerEmeralds=4}] hotbar.8 with emerald[custom_name='{"text":"Stolen Emeralds","color":"#50B81C","italic":false,"bold": true}',lore=['{"text":"Increases attack speed,","color":"red","italic":false}','{"text":"with every stolen emerald","color":"red","italic":false}']] 4
