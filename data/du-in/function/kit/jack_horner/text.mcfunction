#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Big Jack Horner",color:red,bold:true},{text:"\n Excalibur: ",color:blue,bold:true},{text:"A high-damage \"sword\".",color:white,bold:false},{text:" (Axe)",color:gray,bold:false},{text:"\n Magic Nanny Bag: ",color:gold,bold:true},{text:"A bottomless bag full of magic weapons, grants Jack a random one.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your few remaining inhibitions...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of all of the magic in the world...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel the weight of a collapsing star...",color:gray,"italic": true}]