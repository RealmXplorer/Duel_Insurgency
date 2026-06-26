#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Springtrap",color:red,bold:true},{text:"\n Fireaxe: ",color:blue,bold:true},{text:"A sharp, slow weapon for torment.",color:white,bold:false},{text:" (Axe)",color:gray,bold:false},{text:"\n Springlocks: ",color:gold,bold:true},{text:"Enters springlocks, inflicting himself with debuffs, but dealing massive damage. Leave springlocks for some health back.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your bitterness...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your son...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see the springlocks break free...",color:gray,"italic": true}]