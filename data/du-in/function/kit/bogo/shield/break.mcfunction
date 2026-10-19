advancement revoke @s only du-in:kit/shield_break

tag @s add brokenShield
scoreboard players set @s bogoShieldTimer 40
title @s actionbar [{text:"Shield Broken!",bold:true,color:red}]

execute unless score #bogoShieldBroken running matches 1 run function du-in:kit/bogo/shield/loop

#scoreboard players reset @s bogoShieldBreak