#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Judy Hopps",color:red,bold:true},{text:"\n Carrot Pen: ",color:blue,bold:true},{text:"A quick, low-damage spam weapon that deals low damage. Hitting while falling also allows for pogo.",color:white,bold:false},{text:" (Item)",color:gray,bold:false},{text:"\n Tranq Dart: ",color:gold,bold:true},{text:"Shoot a far reaching projectile that sleeps enemies on hit.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to prove yourself...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of justice...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You can see your partner waiting for you...",color:gray,"italic": true}]