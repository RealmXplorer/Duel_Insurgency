#If an ability is thrown from a players inventory, activate
scoreboard players set @s kitUse 1
advancement grant @s only du-in:utility/ability
kill @e[type=item,tag=!displayItem]
scoreboard players reset @s kitUse
scoreboard players reset @s kitUseThrow
scoreboard players reset @s thrownCoal