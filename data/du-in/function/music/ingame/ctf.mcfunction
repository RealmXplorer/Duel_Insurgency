#CAPTURE THE FLAG#
execute unless entity @s[scores={musType=2..3}] if entity @a[tag=!musicOff] run function du-in:music/ingame/default/ctf

#LEGACY MUSIC#
execute if entity @a[scores={musType=2},tag=!musicOff] run function du-in:music/ingame/legacy/ctf

#BETA#
execute if entity @a[scores={musType=3},tag=!musicOff] run function du-in:music/ingame/beta/ctf