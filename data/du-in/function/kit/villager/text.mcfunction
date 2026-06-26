#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Villager",color:red,bold:true},{text:"\n Deal Breaker: ",color:blue,bold:true},{text:"A very basic, mid-damage weapon.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Slight of Hand: ",color:gold,bold:true},{text:"\"Scams\" the enemy and steals their special ability.",color:white,bold:false}]


#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of your greed...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of your village...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see your children running towards you...",color:gray,"italic": true}]
