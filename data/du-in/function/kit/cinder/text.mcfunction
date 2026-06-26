#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Soul of Cinder",color:red,bold:true},{text:"\n Coiled Sword: ",color:blue,bold:true},{text:"A quick, low-damage sword that deals good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Sword Explosion: ",color:gold,bold:true},{text:"Explode into a flurry of fire.",color:white,bold:false},{text:"\n Swap Class: ",color:gray,bold:true},{text:"Swap between different weapon types and new abilities.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your fear of the Dark...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of flame...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel the Fire fade...",color:gray,"italic": true}]