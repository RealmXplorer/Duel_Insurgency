#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Iron Golem",color:red,bold:true},{text:"\n Iron Fist: ",color:blue,bold:true},{text:"A strong, yet slow moving weapon.",color:white,bold:false},{text:" (Axe)",color:gray,bold:false},{text:"\n Iron Launch: ",color:gold,bold:true},{text:"Throws enemies into the air, dealing massive damage, but can miss!.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your obsession to protect...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of peace...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see the village welcome you back...",color:gray,"italic": true}]