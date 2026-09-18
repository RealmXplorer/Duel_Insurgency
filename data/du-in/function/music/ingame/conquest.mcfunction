#CONQUEST#
execute unless entity @a[scores={musType=2..}] if entity @a[tag=!musicOff] run function du-in:music/ingame/default/conquest

#BETA#
execute if entity @a[scores={musType=2},tag=!musicOff] run function du-in:music/ingame/legacy/conquest

execute if entity @a[scores={musType=3},tag=!musicOff] run function du-in:music/ingame/beta/conquest