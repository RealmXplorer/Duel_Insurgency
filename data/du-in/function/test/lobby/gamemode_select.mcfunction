execute if entity @s[tag=!subLobby,scores={lobby=1}] run function du-in:lobby/gamemode_select/kit_use

execute if entity @s[tag=credits] run function du-in:lobby/credits/kit_use
execute if entity @s[tag=shop] run function du-in:lobby/shop/kit_use
execute if entity @s[tag=parkour] run function du-in:lobby/kit_use/parkour