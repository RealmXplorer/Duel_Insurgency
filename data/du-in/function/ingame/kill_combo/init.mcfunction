
#Announce for combo kills
execute if entity @s[scores={quickKill=1}] run function du-in:ingame/kill_combo/announce/single

execute if entity @s[scores={quickKill=2}] run function du-in:ingame/kill_combo/announce/double

execute if entity @s[scores={quickKill=3}] run function du-in:ingame/kill_combo/announce/triple

execute if entity @s[scores={quickKill=4}] run function du-in:ingame/kill_combo/announce/quad

execute if entity @s[scores={quickKill=5}] run function du-in:ingame/kill_combo/announce/quin

#Starts Timer#
scoreboard players set @s comboTimer 70

#