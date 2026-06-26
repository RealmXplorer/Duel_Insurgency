#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Runza Rex",color:red,bold:true},{text:"\n The Exaburger: ",color:blue,bold:true},{text:"Utilize the power of an 18-patty burger.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Temperature Tuesday: ",color:gold,bold:true},{text:"Gives all players Runzas, they must eat.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your burger...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of cold temperatures...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You smell the aroma of fresh Runzas...",color:gray,"italic": true}]