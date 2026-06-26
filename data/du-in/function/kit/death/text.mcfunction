#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Death",color:red,bold:true},{text:"\n Sickle: ",color:blue,bold:true},{text:"A low-damage, high-speed sword.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Flame Wall: ",color:gold,bold:true},{text:"Encompass an enemy in a flame wall.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your grudges...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of judgement...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see a man running from you...",color:gray,"italic": true}]