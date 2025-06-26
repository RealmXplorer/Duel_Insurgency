#ADD KILLCOMBO (STARTS TIMER)#
tag @s add killCombo
tag @s add quickKill

#Announce for combo kills
execute if entity @s[tag=quickKill,scores={quickKill=1}] run function du-in:ingame/kill_combo/announce/single

execute if entity @s[tag=quickKill,scores={quickKill=2}] run function du-in:ingame/kill_combo/announce/double

execute if entity @s[tag=quickKill,scores={quickKill=3}] run function du-in:ingame/kill_combo/announce/triple

execute if entity @s[tag=quickKill,scores={quickKill=4}] run function du-in:ingame/kill_combo/announce/quad

execute if entity @s[tag=quickKill,scores={quickKill=5}] run function du-in:ingame/kill_combo/announce/quin

tag @s remove quickKill
scoreboard players reset @s comboTimer

#