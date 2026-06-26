#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Palpatine",color:red,bold:true},{text:"\n Lightsaber: ",color:blue,bold:true},{text:"A powerful blade that deals good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Life Steal: ",color:gold,bold:true},{text:"Hit an enemy to regain life.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You try to let go of your need to dominate...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of escaping death...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You hear a distant whistle...",color:gray,"italic": true}]