#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Yoda",color:red,bold:true},{text:"\n Lightsaber: ",color:blue,bold:true},{text:"A powerful blade that deals good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Force Absorb: ",color:gold,bold:true},{text:"Absorb damage and projectiles for a short time and reflect the damage around you.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your failure...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your Order restored...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see a new hope...",color:gray,"italic": true}]