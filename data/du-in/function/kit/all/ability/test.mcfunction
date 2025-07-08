advancement revoke @s only du-in:utility/ability

execute if entity @s[tag=!lobby,tag=!win,tag=!lose,tag=!kitMenu,tag=!startgame] run function du-in:kit/all/ability/init
