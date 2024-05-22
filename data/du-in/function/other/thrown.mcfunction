#If an ability is thrown from a players inventory, activate
scoreboard players set @s kitUse 1
kill @e[type=item,tag=!displayItem]
scoreboard players reset @s kitUseThrow