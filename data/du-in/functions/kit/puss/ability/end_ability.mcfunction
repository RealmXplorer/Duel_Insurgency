scoreboard players reset @s pussTimer
function du-in:kit/all/weapon/init
# scoreboard players set @s weapCount 0

#Start cooldown
xp set @s[tag=!stolen] 340 levels

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone

tag @s remove cooldown