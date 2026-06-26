#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Slime",color:red,bold:true},{text:"\n Slime: ",color:blue,bold:true},{text:"The slime uses its body to defend itself and keep enemies at bay.",color:white,bold:false},{text:" (Item)",color:gray,bold:false},{text:"\n Magma Core: ",color:gold,bold:true},{text:"Summons the slime's inner magma cube to boost its damage, and set enemies ablaze.",color:white,bold:false},{text:"\n Duplication: ",color:gray,bold:true},{text:"Splits into smaller slimes on death.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to absorb...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your children...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see your kin...",color:gray,"italic": true}]