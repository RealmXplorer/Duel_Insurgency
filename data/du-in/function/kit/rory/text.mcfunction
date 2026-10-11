#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"The Roaring Knight",color:red,bold:true},{text:"\n The Black Knife: ",color:blue,bold:true},{text:"A quick, low-damage sword that deals good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Dark Star: ",color:gold,bold:true},{text:"Send 3 dark stars that deal damage and explode.",color:white,bold:false},{text:"\n Weightless: ",color:gray,bold:true},{text:"The Knight floats through the air, and glide like with an elytra.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"The glass shimmers...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"Through the glass, you see Freedom...",color:gray,"italic": true}]