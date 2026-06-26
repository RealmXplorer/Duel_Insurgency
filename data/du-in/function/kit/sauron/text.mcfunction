#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Sauron",color:red,bold:true},{text:"\n Mace: ",color:blue,bold:true},{text:"A powerful mace that can deal great damage from further heights.",color:white,bold:false},{text:" (Mace)",color:gray,bold:false},{text:"\n The Ring: ",color:gold,bold:true},{text:"If Sauron has the ring, he has a massive damage and knockback boost. If he does not, he receives an ability revealing, weakening the ring-bearer",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of utter darkness...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You are embraced by the Void...",color:gray,"italic": true}]