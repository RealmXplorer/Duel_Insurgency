#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Yharim",color:red,bold:true},{text:"\n Ultisword: ",color:blue,bold:true},{text:"Uses a large, powerful sword.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Stimulants: ",color:gold,bold:true},{text:"Increases Resistance and armor to repel many damaging attacks.",color:white,bold:false},{text:"\n Rage Meter: ",color:gray,bold:true},{text:"Stay near enemies to charge a powerful ability that increases your damage!",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to conquer...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of fulfillment...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see... nothing",color:gray,"italic": true}]