tag @s add brokenShield
scoreboard players set @s bogoShieldTimer 40
title @s actionbar [{text:"Shield Broken!",bold:true,color:red}]
advancement revoke @s only du-in:kit/shield_break
#scoreboard players reset @s bogoShieldBreak