#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Jevil",color:red,bold:true},{text:"\n Devilsknife: ",color:blue,bold:true},{text:"A quick sword that deals good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Pirouette: ",color:gold,bold:true},{text:"Spins nearby enemies around for random durations.",color:white,bold:false},{text:"\n Neo Chaos: ",color:gray,bold:true},{text:"Stay near enemies to increase your TP! When full, Drop a scythe that does great damage where you're looking!",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need for fun, fun...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of Freedom...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see beyond the bars that keep you free...",color:gray,"italic": true}]