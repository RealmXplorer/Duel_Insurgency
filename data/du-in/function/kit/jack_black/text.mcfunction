#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Jack Black's Steve",color:red,bold:true},{text:"\n The STASH: ",color:blue,bold:true},{text:"A kick-a** DIAMOND SWORD.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n CHICKEN JOCKEY!: ",color:gold,bold:true},{text:"All players must ride a chicken for a short time.",color:white,bold:false},{text:"\n FLINT AND STEEL: ",color:gray,bold:true},{text:"When fighting, have chance to get a FLINT AND STEEL. Hit someone with it to IGNITE them!",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need for creativity...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of lava and chicken...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see Dennis...",color:gray,"italic": true}]