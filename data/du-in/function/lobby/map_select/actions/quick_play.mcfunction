#Remove kit selection
tag @a remove kitMenu

#Mark as quickmatch
tag @a add quickMatch

#Add random kit#
#tag @a[tag=!kitPicked,tag=!spectating] add random
execute as @a[tag=!kitPicked,tag=!spectating] run function du-in:kit/all/random/roll
      
#Make it so players do not go into spectator, unless they already are
tag @a[tag=!kitPicked,tag=!spectating] add kitPicked

title @a subtitle {text:""}

#Pick random map
function du-in:maps/start/random

#Reset map countdown timer
scoreboard players reset #main mapCountdown

#Reset lobby score for players#
scoreboard players reset @a lobby
scoreboard players reset #main lobby