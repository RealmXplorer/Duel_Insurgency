#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Ralsei",color:red,bold:true},{text:"\n Scarf: ",color:blue,bold:true},{text:"Uses a very uncomfortable scarf.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Lullaby: ",color:gold,bold:true},{text:"Sings a song that makes all nearby enemies fall asleep.",color:white,bold:false},{text:"\n Heal Prayer: ",color:gray,bold:true},{text:"Stay near enemies to increase your TP! When maxed, you can heal yourself and teammates. This also damages undead enemies!",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your desire to change fate...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your purpose...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel Freedom...",color:gray,"italic": true}]