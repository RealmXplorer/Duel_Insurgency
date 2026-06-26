#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Chief Bogo",color:red,bold:true},{text:"\n Riot Shield: ",color:blue,bold:true},{text:"A quick shield that deals good damage and can block damage.",color:white,bold:false},{text:" (Shield)",color:gray,bold:false},{text:"\n Shield Charge: ",color:gold,bold:true},{text:"Charges in a direction, dealing damage to opponents in the way.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your distrust...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of safety...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see Zootopia, free and yet safe...",color:gray,"italic": true}]