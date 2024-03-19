#DEFAULT#
# item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Steve\"}"},du-in:weaponItem}
# item replace entity @s armor.chest with minecraft:leather_chestplate{HideFlags:4,Unbreakable:1,display:{Name:'{"text":"Steve Chest"}',color:2664379},du-in:weaponItem} 1
# item replace entity @s armor.legs with minecraft:leather_leggings{HideFlags:4,Unbreakable:1,display:{Name:'{"text":"Steve Legs"}',color:3949738},du-in:weaponItem} 1
# item replace entity @s armor.feet with minecraft:leather_boots{HideFlags:4,Unbreakable:1,display:{Name:'{"text":"Steve Feet"}',color:4673362},du-in:weaponItem} 1

item replace entity @s armor.head with minecraft:player_head[custom_name='{"text":"Steve","color":"white","bold":true,"italic":false}'] 1
item replace entity @s armor.chest with leather_chestplate[custom_name='{"text":"Steve Chest"}',unbreakable={show_in_tooltip:false},dyed_color={rgb:2664379,show_in_tooltip:false}] 1
item replace entity @s armor.legs with leather_leggings[custom_name='{"text":"Steve Legs"}',unbreakable={show_in_tooltip:false},dyed_color={rgb:3949738,show_in_tooltip:false}] 1
item replace entity @s armor.feet with leather_boots[custom_name='{"text":"Steve Feet"}',unbreakable={show_in_tooltip:false},dyed_color={rgb:4673362,show_in_tooltip:false}] 1