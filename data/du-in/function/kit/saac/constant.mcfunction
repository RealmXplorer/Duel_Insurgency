#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/saac/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/saac/sounds/jump

#Timers
tag @s[tag=!legMusicOff,tag=!ctfIngame,tag=!cqIngame,tag=!void] add saac

scoreboard players remove @s[scores={saacDisTimer=-99..}] saacDisTimer 1

execute if entity @s[tag=secKitActions] run function du-in:kit/saac/kickstart/init

execute if entity @s[tag=saacSteal] run function du-in:kit/saac/money/stolen

execute if entity @s[scores={saacMoneyCheck=25..}] run function du-in:kit/saac/money/quarter_item

execute if entity @s[scores={saacMoneyCheck=0}] run item replace entity @s hotbar.8 with air
execute if entity @s[scores={saacMoneyDollar=0}] run item replace entity @s hotbar.7 with air

execute if entity @s[scores={saacMoneyDollar=1..}] run function du-in:kit/saac/money/dollar_item

#WHO EVEN IS THIS
#HE IS A VERY
#VERY
#INTERESTING 
#INDIVIDUAL
