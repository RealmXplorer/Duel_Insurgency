tag @s remove unicornBow
clear @s crossbow
#scoreboard players set @s weapCount 0
function du-in:kit/all/weapon/init

#Start cooldown
xp set @s[tag=!stolen] 330 levels

#End ability
function du-in:kit/jack_horner/ability/end