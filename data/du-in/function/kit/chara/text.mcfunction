#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Chara",color:red,bold:true},{text:"\n Real Knife: ",color:blue,bold:true},{text:"A true weapon that does good damage.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Demon Form: ",color:gold,bold:true},{text:"Enters a form that inflicts blindness on enemies and increases your strength.",color:white,bold:false}]


#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your desire to see your brother...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of chaos...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see sweet nothing...",color:gray,"italic": true}]