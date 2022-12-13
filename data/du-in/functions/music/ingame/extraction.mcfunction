#EXTRACTION#
execute if entity @s run function du-in:music/ingame/default/extraction
execute if entity @s[tag=ex,tag=exend] unless entity @s[scores={kit=1001}] run scoreboard players set @s music 0
execute if entity @s[tag=ex,tag=exend] run function du-in:music/ingame/stop/transition
tag @s[tag=exend] remove ex

execute if entity @s[tag=!exend,tag=!ex] run function du-in:music/ingame/stop/extraction
#execute if entity @s[tag=charaFear] run function du-in:music/ingame/stop/extraction
#execute if entity @s[tag=krampusAbility] run function du-in:music/ingame/stop/extraction