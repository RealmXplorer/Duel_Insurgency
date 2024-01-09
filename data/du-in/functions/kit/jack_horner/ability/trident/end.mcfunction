#Remove tags and reset weapon value
tag @s remove asgoreTrident
scoreboard players set @s weapCount 0
scoreboard players reset @s tridentTimer

#Start cooldown
xp set @s[tag=!stolen] 330 levels

#End ability
function du-in:kit/jack_horner/ability/end