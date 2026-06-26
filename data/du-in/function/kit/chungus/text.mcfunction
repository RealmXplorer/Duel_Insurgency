#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Wha- What is this?",color:gray,"italic": true}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"Wha- What are you doing?",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"You're insane...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"Put the game down please...",color:gray,"italic": true}]