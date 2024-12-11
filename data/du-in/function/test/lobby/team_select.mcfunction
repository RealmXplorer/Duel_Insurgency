execute if entity @s[scores={lobby=1}] run function du-in:test/lobby/gamemode_select
execute if entity @s[tag=!subLobby,scores={lobby=1}] run function du-in:lobby/kit_use/gm

execute if entity @s[tag=credits] run function du-in:lobby/kit_use/credits
execute if entity @s[tag=shop] run function du-in:lobby/kit_use/shop
execute if entity @s[tag=parkour] run function du-in:lobby/kit_use/parkour

execute if entity @s[tag=teamMode] run function du-in:lobby/kit_use/tm
