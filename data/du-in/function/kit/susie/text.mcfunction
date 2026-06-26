#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Susie",color:red,bold:true},{text:"\n Mane Axe: ",color:blue,bold:true},{text:"A slow, powerful axe weapon.",color:white,bold:false},{text:" (Axe)",color:gray,bold:false},{text:"\n Rude Buster: ",color:gold,bold:true},{text:"Shoots a slow moving projectile that deals great damage.",color:white,bold:false},{text:"\n Will Change: ",color:gray,bold:true},{text:"Stay near enemies to increase your TP! When full, upgrade Rude Buster into Red Buster!",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your fear of loneliness...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of home...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You hear the school bell chime...",color:gray,"italic": true}]