#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Willo",color:red,bold:true},{text:"\n Candy Corn Revolver: ",color:blue,bold:true},{text:"A slow-firing revolver.",color:white,bold:false},{text:" (Hitscan Weapon)",color:gray,bold:false},{text:"\n Weapon Switch: ",color:gold,bold:true},{text:"Willo switches to her knife for added movement and close-quarters combat",color:white,bold:false},{text:"\n Candy Corn: ",color:gray,bold:true},{text:"Every few seconds, gain Candy Corn. It can be eaten for a speed boost, or used to reload the Candy Corn Revolver.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to escape...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of happier days...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel the embrace of your friend...",color:gray,"italic": true}]