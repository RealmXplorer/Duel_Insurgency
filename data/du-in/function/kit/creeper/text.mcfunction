#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Creeper",color:red,bold:true},{text:"\n Strike: ",color:blue,bold:true},{text:"A slow-moving melee attack.",color:white,bold:false},{text:" (Axe)",color:gray,bold:false},{text:"\n Detonate: ",color:gold,bold:true},{text:"A forced explosion that kills, or greatly damages enemies.",color:white,bold:false},{text:" (Kills not counted)",color:white,bold:false,"italic":true}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your rage...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of contentment...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel a warm sunrise...",color:gray,"italic": true}]