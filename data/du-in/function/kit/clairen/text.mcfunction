#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Clairen",color:red,bold:true},{text:"\n Plasma Saber: ",color:blue,bold:true},{text:"A low-damage sword.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Energy Field: ",color:gold,bold:true},{text:"A forcefield that destroys projectiles and gives ALL players in field a strength boost.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need for revenge...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your family living free...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You hear cheers of freedom...",color:gray,"italic": true}]