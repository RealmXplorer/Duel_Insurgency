#Remove kit selection
tag @a remove kitMenu

#Mark as quickmatch
tag @a add quickMatch

#Add random kit#
tag @a[tag=!working,tag=!kitPicked,tag=!spect] add random

#Make it so players do not go into spectator, unless they already are#
tag @a[tag=!working,tag=!kitPicked,tag=!spect] add kitPicked

title @a subtitle {"text":""}

#Pick random map#
tag @r[tag=!working] add voteRandom
execute as @a[tag=voteRandom] run function du-in:maps/random

#Reset map countdown timer
scoreboard players reset #main mapCountdown

#Reset lobby score for players#
scoreboard players reset @a lobby

#Stop Function#
scoreboard players reset @a quickPlay