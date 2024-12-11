#If an ability is thrown from a players inventory, activate
#advancement grant @s only du-in:utility/ability
scoreboard players set @s kitUse 1
kill @e[type=item,tag=!displayItem]
scoreboard players reset @s kitUseThrow
#scoreboard players reset @s thrownCoal