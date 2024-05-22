tag @s remove givenSpam
tag @s remove givenRed
tag @s remove givenBlue
tag @s remove givenQuery
tag @s remove givenCredits
tag @s remove givenNext
tag @s remove givenPrev
tag @s remove givenRandKit

execute if entity @s[tag=!subLobby,scores={lobby=1}] at @s run function du-in:lobby/scheduled/gamemode_select
execute if entity @s[tag=shop] at @s run function du-in:lobby/scheduled/shop
execute if entity @s[tag=parkour] at @s run function du-in:lobby/scheduled/parkour
execute if entity @s[tag=credits] at @s run function du-in:lobby/scheduled/credits