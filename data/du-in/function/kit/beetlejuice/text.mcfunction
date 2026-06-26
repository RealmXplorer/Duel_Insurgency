#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Beetlejuice",color:red,bold:true},{text:"\n Carnival Hammer: ",color:blue,bold:true},{text:"A weapon for the bored busi-ness-man.",color:white,bold:false},{text:" (Axe)",color:gray,bold:false},{text:"\n The Model: ",color:gold,bold:true},{text:"Teleport players into a model and become a giant.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to get married...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of getting out of here...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You are 9,998,383,750,000th in line...",color:gray,"italic": true}]