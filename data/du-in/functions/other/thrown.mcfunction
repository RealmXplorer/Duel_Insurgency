#If an ability is thrown from a players inventory, activate
scoreboard players set @s kitUse 1
kill @e[type=item,nbt={Item:{tag:{weaponItem:1b}}}]
scoreboard players reset @s kitUseThrow