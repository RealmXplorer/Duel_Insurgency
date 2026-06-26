#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Impostor",color:red,bold:true},{text:"\n Suspicious Knife: ",color:blue,bold:true},{text:"A sussy weapon.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Emergency Meeting: ",color:gold,bold:true},{text:"Teleports all players to you for the meeting.",color:white,bold:false},{text:"\n Sus: ",color:gray,bold:true},{text:"Climb into the vents.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your desire to kill...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of sneaking away...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You feel the coldness of space...",color:gray,"italic": true}]