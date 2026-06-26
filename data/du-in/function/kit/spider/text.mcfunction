#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Spider",color:red,bold:true},{text:"\n Webbed Sword: ",color:blue,bold:true},{text:"Webbed sword used to damage enemies.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Web Blast: ",color:gold,bold:true},{text:"Creates a blast webs in a radius to slow enemies.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your aggression...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your cave...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see the opening of your cave...",color:gray,"italic": true}]