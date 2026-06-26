#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Darth Vader",color:red,bold:true},{text:"\n Lightsaber: ",color:blue,bold:true},{text:"A powerful blade that deals good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Force Choke: ",color:gold,bold:true},{text:"Lifts an enemy in the air, choking them of their life.",color:white,bold:false},{text:"\n Berserk: ",color:gray,bold:true},{text:"Deal more damage as you reach lower health.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your anger...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your lost future...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel the embrace of your wife...",color:gray,"italic": true}]