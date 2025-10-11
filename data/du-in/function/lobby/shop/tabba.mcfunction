advancement revoke @s only du-in:utility/interact_tabba

scoreboard players add @s tabbaTalk 1
execute if entity @s[tag=!fromVoid] run function du-in:lobby/shop/tabba/default
execute if entity @s[tag=fromVoid] run function du-in:lobby/shop/tabba/void