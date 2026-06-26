#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Player",color:red,bold:true},{text:"\n Wooden Blade: ",color:blue,bold:true},{text:"A simple, low-damage weapon.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Makeshift Bow: ",color:gray,bold:true},{text:"Uses a bow that has limited arrows. He can gain more arrows through kills.",color:white,bold:false},{text:"\n Balanced Breakfast: ",color:gold,bold:true},{text:"Quickly heals player at the expense of their speed.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need to find purpose...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of happiness...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see your dog waiting for you...",color:gray,"italic": true}]