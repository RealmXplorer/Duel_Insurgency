#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Aang",color:red,bold:true},{text:"\n Staff: ",color:blue,bold:true},{text:"A quick, low-damage sword that deals good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Air Burst: ",color:gold,bold:true},{text:"Throw an air ball (recharges quickly).",color:white,bold:false},{text:"\n Earth Parry: ",color:gray,bold:true},{text:"Landing a parry will damage the attacker and throw them into the air.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your guilt...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your people...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You hear your friends call your name...",color:gray,"italic": true}]