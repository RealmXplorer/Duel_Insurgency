scoreboard players set @s shrunkTimer 100
function du-in:kit/all/size/tiny

playsound minecraft:sans.ability master @a ~ ~ ~ .25 1
playsound minecraft:terraria.drink master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.burp master @a ~ ~ ~ 100 1

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick

#Start cooldown
xp set @s[tag=!stolen] 320 levels

#End ability
function du-in:kit/jack_horner/ability/end