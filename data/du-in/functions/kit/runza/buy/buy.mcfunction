execute unless entity @s[scores={Diamonds=1949..}] run function du-in:kit/all/buy/fail

execute if entity @s[scores={Diamonds=1949..}] run function du-in:kit/runza/buy/yes
clear @s player_head{runzaHead:1b}

scoreboard players reset @s[scores={buy=1..}] buy