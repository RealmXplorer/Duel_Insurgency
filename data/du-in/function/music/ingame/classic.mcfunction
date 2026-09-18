#CLASSIC#
execute unless entity @a[scores={musType=1..}] if entity @a[tag=!musOverride] run function du-in:music/ingame/default/classic

#TOURNAMENT# (1)
execute if entity @a[scores={musType=1},tag=!musOverride] run function du-in:music/ingame/other/tournament

#OLD TOURNAMENT#
#execute if entity @s[tag=tournament,tag=beta] run function du-in:music/ingame/other/alttourn

#LEGACY# (2)
execute if entity @a[scores={musType=2},tag=!musOverride] run function du-in:music/ingame/legacy/classic

#BETA#
execute if entity @a[scores={musType=3},tag=!musOverride] run function du-in:music/ingame/beta/classic

#HALLOWEEN#
execute if entity @a[scores={musType=4},tag=!musOverride] run function du-in:music/ingame/halloween/classic

#CHRISTMAS#
execute if entity @a[scores={musType=5},tag=!musOverride] run function du-in:music/ingame/christmas/classic

#STOP SOUNDS#
#execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/classic