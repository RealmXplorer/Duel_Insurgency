#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Sans",color:red,bold:true},{text:"\n Magic Bone: ",color:blue,bold:true},{text:"A low-damage weapon with great attack speed.",color:white,bold:false},{text:" (Item)",color:gray,bold:false},{text:"\n Bad Time: ",color:gold,bold:true},{text:"Teleports behind an enemy, giving you strength and speed.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your cynicism...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your brother...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see a light at the end of the tunnel...",color:gray,"italic": true}]