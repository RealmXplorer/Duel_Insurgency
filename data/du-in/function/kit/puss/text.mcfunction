#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Puss in Boots",color:red,bold:true},{text:"\n Blade of Justice: ",color:blue,bold:true},{text:"A good-damage sword.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Fearless Hero: ",color:gold,bold:true},{text:"Disarm and reduce knockback resistance and armor for enemies, and gain buffs with every death.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to be a legend...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of new adventures...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel the embrace of your friends...",color:gray,"italic": true}]