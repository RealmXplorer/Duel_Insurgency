#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Kratos",color:red,bold:true},{text:"\n Leviathan Axe: ",color:blue,bold:true},{text:"A slow, powerful axe that deals great damage.",color:white,bold:false},{text:" (Axe)",color:gray,bold:false},{text:"\n Rock Throw: ",color:gold,bold:true},{text:"Pull a rock out of the ground and throw it. The closer to the target, the more damage.",color:white,bold:false},{text:"\n Spartan Rage: ",color:gray,bold:true},{text:"Take and deal damage to charge the Rage Meter. When full, enter Spartan Rage and gain a massive speed and damage boost (at the cost of your axe)",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your rage...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of peace...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel the weight of your sins lifted...",color:gray,"italic": true}]