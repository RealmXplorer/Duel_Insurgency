#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Gumball & Darwin",color:red,bold:true},{text:"\n Lightsaber: ",color:blue,bold:true},{text:"A low-damage sword.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Pursuit: ",color:gold,bold:true},{text:"Gain a large speed boost, get close enough to an enemy to blow them up.",color:white,bold:false},{text:"\n Tag Out: ",color:gray,bold:true},{text:"Tag Darwin into the fight, with his own ability and weapon.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your irresponsibility...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of innocence...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You hear the calling of your parents...",color:gray,"italic": true}]