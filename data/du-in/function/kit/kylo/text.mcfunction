#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Kylo Ren",color:red,bold:true},{text:"\n Cross-Guard Lightsaber: ",color:blue,bold:true},{text:"Unstable blade that deals low damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Force Freeze: ",color:gold,bold:true},{text:"Creates a force stasis that freezes an enemy in place.",color:white,bold:false}]


#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your hatred...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your life before...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel the embrace of your father...",color:gray,"italic": true}]