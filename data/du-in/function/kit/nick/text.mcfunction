#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Nick Wilde",color:red,bold:true},{text:"\n Jumbo Pop: ",color:blue,bold:true},{text:"Uses a large, popsicle that does good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Hustle: ",color:gold,bold:true},{text:"Removes or sabotages enemy abilities and / or adds cooldown times to abilities. (Lowers cooldowns and empowers abilities for teammates)",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to stay safe...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your partner...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You hear her yelling at you to wake up...",color:gray,"italic": true}]