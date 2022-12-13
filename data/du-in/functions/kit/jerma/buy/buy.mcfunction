execute unless entity @s[scores={Diamonds=985..}] run function du-in:lobby/buy/fail

execute if entity @s[scores={Diamonds=985..}] run function du-in:kit/jerma/buy/yes
clear @s player_head{jermaHead:1b}

scoreboard players reset @s[scores={buy=1..}] buy