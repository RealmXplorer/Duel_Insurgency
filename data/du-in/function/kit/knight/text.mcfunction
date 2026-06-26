#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"The Knight",color:red,bold:true},{text:"\n Pure Nail: ",color:blue,bold:true},{text:"A quick, low-damage sword that deals good damage. Hitting while falling also allows for pogo.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Desolate Dive: ",color:gold,bold:true},{text:"From a height, descend quickly and unleash a soul explosion.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your Will...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You do not Dream...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You are the Hollow Knight...",color:gray,"italic": true}]