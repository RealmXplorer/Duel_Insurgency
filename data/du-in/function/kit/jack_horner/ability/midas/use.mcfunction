
#Start cooldown
xp set @s[tag=!stolen,tag=midasHand] 330 levels

#End ability
execute if entity @s[tag=midasHand] run function du-in:kit/jack_horner/ability/end
clear @s stick
function du-in:kit/all/weapon/init
advancement revoke @s only du-in:kit/touch