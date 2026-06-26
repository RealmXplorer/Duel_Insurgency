#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Skeleton",color:red,bold:true},{text:"\n Sword: ",color:blue,bold:true},{text:"A powerful blade that deals good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Change State: ",color:gold,bold:true},{text:"Receive a bow and become a stray. If used while in Stray state, become a Bogged.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your form...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of sprawling fields...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see the sweet embrace of the grave...",color:gray,"italic": true}]