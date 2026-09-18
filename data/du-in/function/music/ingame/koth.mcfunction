#KING OF THE HILL#
execute unless entity @a[scores={musType=2..}] if entity @a[tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/default/koth

#LEGACY#
execute if entity @a[scores={musType=2},tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/legacy/koth

#BETA#
execute if entity @a[scores={musType=3},tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/beta/koth

#HALLOWEEN#
execute if entity @a[scores={musType=4},tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/halloween/koth

#CHRISTMAS#
execute if entity @a[scores={musType=5},tag=!musOverride,tag=!musicOff] run function du-in:music/ingame/christmas/koth