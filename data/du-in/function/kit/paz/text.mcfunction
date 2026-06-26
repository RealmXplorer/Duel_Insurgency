#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"PearApplez",color:red,bold:true},{text:"\n <<Placeholder>>: ",color:blue,bold:true},{text:"Uses a <<placeholder>> that does low damage quickly.",color:white,bold:false},{text:" (Item)",color:gray,bold:false},{text:"\n Hack: ",color:gold,bold:true},{text:"DDoSes enemies and forces them to teleport to a previous position! (Also gives PearApplez a speed and damage boost)",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need for Fortnite skins...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of- actually that's really inappropriate...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"I can't even describe what you're seeing...",color:gray,"italic": true}]