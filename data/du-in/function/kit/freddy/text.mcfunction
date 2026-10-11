#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Freddy Fazbear",color:red,bold:true},{text:"\n Showtime Mic: ",color:blue,bold:true},{text:"A good-damage weapon.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Power Drain: ",color:gold,bold:true},{text:"Steals power from all nearby non-fire light blocks and strengthens Freddy.",color:white,bold:false},{text:"\n Shadow Freddy: ",color:gray,bold:true},{text:"The lower the light level, the faster and stronger Freddy becomes. If its dark enough, he disappears entirely...",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your need for revenge...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of birthdays and pizzas...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see a bright light welcoming you home...",color:gray,"italic": true}]