#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Asriel",color:red,bold:true},{text:"\n Chaos Saber: ",color:blue,bold:true},{text:"A low-damage weapon that charges. Once charged, it can unleash a damaging attack",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Shocker Breaker: ",color:gold,bold:true},{text:"Summons a series of lightning strikes where you are looking.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to find someone like you...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your parents...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see your family one last time...",color:gray,"italic": true}]