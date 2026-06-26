#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Pawbert Lynxley",color:red,bold:true},{text:"\n Hedge Axe: ",color:blue,bold:true},{text:"A slow axe that deals great damage.",color:white,bold:false},{text:" (Axe)",color:gray,bold:false},{text:"\n No Loose Ends: ",color:gold,bold:true},{text:"Go invisible and refill Venom Injector. Also sabotages nearby enemies and empowers nearby allies.",color:white,bold:false},{text:"\n Venom Injector: ",color:gray,bold:true},{text:"A powerful venom injector that inflicts wither and slows enemies! Must be reloaded with vials. Kills give vials.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to prove yourself...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of acceptance...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You reach out to your family. Their backs are turned...",color:gray,"italic": true}]
