#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Asgore",color:red,bold:true},{text:"\n Royal Trident: ",color:blue,bold:true},{text:"A great damage weapon that can be thrown.",color:white,bold:false},{text:" (Trident)",color:gray,bold:false},{text:"\n Wall of Fire: ",color:gold,bold:true},{text:"Summons a wall of fire in front of you.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your self-hatred...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your family...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel the embrace of your son...",color:gray,"italic": true}]