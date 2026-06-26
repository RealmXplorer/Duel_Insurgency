#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"What's that phone ringing?",color:gray,"italic": true}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of serving others...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You dream of winning a case...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You see riches beyond compare...",color:gray,"italic": true}]