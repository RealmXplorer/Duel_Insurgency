clear @s snowball
execute if entity @s[tag=!stolen] run function du-in:kit/jack_horner/weapon
execute if entity @s[tag=stolen] run function du-in:kit/villager/weapon

#Remove ability from hand
#clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s 300 levels

#End ability
function du-in:kit/jack_horner/ability/end