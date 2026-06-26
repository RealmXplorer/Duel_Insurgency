#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Saac",color:red,bold:true},{text:"\n Combat Phone: ",color:blue,bold:true},{text:"Uses a large phone that does low damage quickly, it has a tendency to break!",color:white,bold:false},{text:" (Item)",color:gray,bold:false},{text:"\n Great Bamboozle: ",color:gold,bold:true},{text:"Flips ALL players heads 180 degrees!",color:white,bold:false},{text:"\n Caffeine Addiction: ",color:gray,bold:true},{text:"Collect money from players and buy soda from vending machines!",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need for quarters...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of kickstarts...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You black out...",color:gray,"italic": true}]