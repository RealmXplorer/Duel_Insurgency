#tag @s add armor
function du-in:kit/all/armor/armor
xp set @s[tag=!stolen] 420 levels
tag @s remove cooldown
execute if entity @s[tag=stolen] run tag @s add kitDone
scoreboard players reset @s charaTimer