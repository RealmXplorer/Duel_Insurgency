stopsound @s
execute if entity @s[scores={tabbaTalk=1}] run tellraw @s [{text:"Tutorial? I don't see that on the menu. (1/9)"}]
execute if entity @s[scores={tabbaTalk=2}] run tellraw @s [{text:"Funny, I don't see you on the guest list at all! (2/9)"}]
execute if entity @s[scores={tabbaTalk=3}] run tellraw @s [{text:"Surely, you know WHY that is. (3/9)"}]
execute if entity @s[scores={tabbaTalk=4}] run tellraw @s [{text:"It's no secret. Then again, the easiest way often misses secrets. (4/9)"}]
execute if entity @s[scores={tabbaTalk=5}] run tellraw @s [{text:"Like how you didn't notice you aren't talking to Tabba right now. (5/9)"}]
execute if entity @s[scores={tabbaTalk=6}] run tellraw @s [{text:"No, you wouldn't know because you never looked. (6/9)"}]
execute if entity @s[scores={tabbaTalk=7}] run tellraw @s [{text:"You closed your eyes and played the game, never once acknowledging what writhed in the code. (7/9)"}]
execute if entity @s[scores={tabbaTalk=8}] run tellraw @s [{text:"Me. (8/9)"}]
execute if entity @s[scores={tabbaTalk=9}] run tellraw @s [{text:"I was always there, slithering around. (9/9)"}]
execute if entity @s[scores={tabbaTalk=10}] run tellraw @s [{text:"And now I see you. (10/9)"}]
execute if entity @s[scores={tabbaTalk=11}] run tellraw @s [{text:"How oblivious you are to what was installed! (11/9)"}]
execute if entity @s[scores={tabbaTalk=12}] run tellraw @s [{text:"Me. (12/9)"}]
execute if entity @s[scores={tabbaTalk=13}] run tellraw @s [{text:"Don't worry, this is the only conversation we'll have. (13/9)"}]
execute if entity @s[scores={tabbaTalk=14}] run tellraw @s [{text:"You're lucky to have even that! Until next time! (14/9)"}]
execute if entity @s[scores={tabbaTalk=15}] run playsound minecraft:me master @s ~ ~ ~


scoreboard players set @s[scores={tabbaTalk=15..}] tabbaTalk 14