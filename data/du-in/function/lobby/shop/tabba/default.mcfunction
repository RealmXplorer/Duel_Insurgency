execute if entity @s[scores={tabbaTalk=1}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Tutorial? I don't see that on the menu. (1/9)"]
execute if entity @s[scores={tabbaTalk=2}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Alright fine. To pick a character, open your inventory when you enter the map voting section. (2/9)"]
execute if entity @s[scores={tabbaTalk=3}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> In game, Every character gets an ability. Right click to use it. Some abilities require you to be near your enemy or a teammate. (3/9)"]
execute if entity @s[scores={tabbaTalk=4}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Some characters have swords, others axes, some sticks. They all have different attack speeds, so learn them. Remember to time your hits. (4/9)"]
execute if entity @s[scores={tabbaTalk=5}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Other characters have secondary abilities. These have unique cooldowns. Some are more offensive and others are more defensive. You'll have to play to learn them (5/9)"]
execute if entity @s[scores={tabbaTalk=6}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Some characters are \"Legendary\", meaning you'll have to purchase them with ingame \"Diamonds\". These characters have abilities that affect ALL players. (6/9)"]
execute if entity @s[scores={tabbaTalk=7}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Some of these legendary characters can use certain map objects. Saac and PearApplez can use vending machines, and Impostor and Jerma can vent and sabotage those vending machines. (7/9)"]
execute if entity @s[scores={tabbaTalk=8}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Parry by crouching right before a hit. You won't be able to parry if you have a Damage over Time effect! (Fire, poison, wither) (8/9)"]
execute if entity @s[scores={tabbaTalk=9}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Learn some of the other mechanics, different characters interact differently with each other! (9/9)"]

execute if entity @s[scores={tabbaTalk=10}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> No, I don't know why all of these worlds are here. How would I know? I'm just from an abandoned indie game."]
execute if entity @s[scores={tabbaTalk=11}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> Why is everyone so insistent on fighting? Couldn't we try working together for once?"]
execute if entity @s[scores={tabbaTalk=12}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> I have this weird feeling that someone or something is watching me..."]
execute if entity @s[scores={tabbaTalk=13}] run tellraw @s ["",{text:"<",color:white},{text:"Tabba",color:yellow},"> If you want another tutorial, just leave the shop and come back!"]

#tellraw @s [{"color":"white","text":"<"},{"color":"yellow","text":"Tabba"},{"color":"white","text":"> Tutorial? I don't see that on the menu. (1/9)"}]

scoreboard players set @s[scores={tabbaTalk=13..}] tabbaTalk 9