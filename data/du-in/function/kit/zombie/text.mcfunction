#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Zombie",color:red,bold:true},{text:"\n Undead Strike: ",color:blue,bold:true},{text:"A weapon of brute strength used to damage enemies.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Undead Rage: ",color:gold,bold:true},{text:"Summons a gravestone for the zombie to respawn at, and gives him buffs on respawn, or if it is destroyed.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your hunger...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of rest...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You finally drift to sleep...",color:gray,"italic": true}]