#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Flowey",color:red,bold:true},{text:"\n Flower Power: ",color:blue,bold:true},{text:"A low-damage weapon.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Alternate Roots: ",color:gold,bold:true},{text:"Flowey digs underground to protect himself and move. Passing by enemies inflicts them with poison.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your nihilism...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of feeling something again...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see the surface again...",color:gray,"italic": true}]