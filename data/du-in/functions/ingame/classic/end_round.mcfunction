#If a player has more than the set threshold, add tag
execute as @a[tag=playing,tag=cIngame] if score @s killIngame >= #main testDone run tag @s add ffaDone

#Announce player
title @a[tag=cIngame,tag=!cdone] actionbar {"text":"","color":"gold","extra":[{"selector":"@p[tag=ffaDone,tag=cIngame]"},{"text":" is about to win!"}]}

#End function
tag @a[tag=cIngame,tag=!cdone] add cdone