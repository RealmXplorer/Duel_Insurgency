execute unless entity @s[scores={Diamonds=1000..}] run function du-in:lobby/buy/fail
execute if entity @s[scores={Diamonds=1000..}] run function du-in:kit/paz/buy/yes
clear @s player_head{pazHead:1b}
scoreboard players reset @s[scores={buy=1..}] buy