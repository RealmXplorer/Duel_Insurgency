#If a player is near victory, add tag
#execute as @a[tag=playing,tag=cIngame,tag=!classicEnd] if score @s killIngame >= #main testGoal run tag @s add closeWin

#Announce tagged player
title @a actionbar {"text":"Time is running out!","color":"gold"}

#Play sound
#execute as @a run playsound minecraft:block.anvil.destroy master @a ~ ~ ~ 2 1.25

#Change bossbar color
#bossbar set bossbar:classic color red

#End Function
tag @a add classicEnd