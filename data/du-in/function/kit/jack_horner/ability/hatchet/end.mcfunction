#Remove tags and reset weapon value
tag @s remove theHatchet
# scoreboard players set @s weapCount 0
function du-in:kit/all/weapon/init
#scoreboard players reset @s tridentTimer

#Start cooldown
xp set @s[tag=!stolen] 330 levels

#End ability
function du-in:kit/jack_horner/ability/end