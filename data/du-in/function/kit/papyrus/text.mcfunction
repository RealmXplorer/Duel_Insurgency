#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Papyrus",color:red,bold:true},{text:"\n Really Cool Normal Attack: ",color:blue,bold:true},{text:"A low-damage weapon with great attack speed that has Knockback.",color:white,bold:false},{text:" (Item)",color:gray,bold:false},{text:"\n Spaghetti: ",color:gold,bold:true},{text:"Summons bones from the ground to attack the enemy.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need for admiration...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of friendship...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see all of your friends waiting for you...",color:gray,"italic": true}]