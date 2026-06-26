#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Frisk",color:red,bold:true},{text:"\n Stick: ",color:blue,bold:true},{text:"A low-damage weapon with great attack speed.",color:white,bold:false},{text:" (Item)",color:gray,bold:false},{text:"\n B. Scotch Pie: ",color:gold,bold:true},{text:"Forces all nearby enemies to stop fighting. Heals you and gives allies strength.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need for a happy ending...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of a place to sleep...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see the warmth of a cottage...",color:gray,"italic": true}]