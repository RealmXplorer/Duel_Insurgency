#DEATHMATCH#
execute unless entity @a[scores={musType=2..}] if entity @a[tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/default/deathmatch

#LEGACY#
execute if entity @a[scores={musType=2},tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/legacy/deathmatch

#BETA#
execute if entity @a[scores={musType=3},tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/beta/deathmatch

#HALLOWEEN#
execute if entity @a[scores={musType=4},tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/halloween/deathmatch

#CHRISTMAS
execute if entity @a[scores={musType=5},tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/christmas/deathmatch
