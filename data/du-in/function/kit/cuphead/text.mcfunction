#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Cuphead",color:red,bold:true},{text:"\n Devil's Horn: ",color:blue,bold:true},{text:"A low-damage sword.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Super Art II: ",color:gold,bold:true},{text:"Every hit increases i-frames. (Need to earn 5 cards)",color:white,bold:false},{text:"\n Parry: ",color:gray,bold:true},{text:"Jump and right-click to parry projectiles and enemies to earn cards.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your recklessness...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of happy times...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see Inkwell Isle...",color:gray,"italic": true}]