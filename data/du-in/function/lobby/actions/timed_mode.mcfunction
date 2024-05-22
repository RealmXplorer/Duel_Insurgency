scoreboard players add @s timedMode 1
execute if entity @s[scores={timedMode=2..}] run scoreboard players set @s timedMode 0
execute if entity @s[tag=partyLeader,scores={timedMode=1}] run tag @a add timedMode
execute unless entity @s[tag=partyLeader,scores={timedMode=1}] run tag @a remove timedMode
execute if entity @s[tag=partyLeader,scores={timedMode=1}] run tellraw @a ["",{"text":"Timed Mode","bold":true,"color":"gold"},{"text":" on","color":"green"},{"text":" [WARNING! UNSTABLE!]","color":"red","bold":true}]
execute if entity @s[tag=partyLeader,scores={timedMode=1}] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ .2 1.5
execute unless entity @s[tag=partyLeader,scores={timedMode=1}] run tellraw @a ["",{"text":"Timed Mode","bold":true,"color":"gold"},{"text":" off","color":"red"}]
execute unless entity @s[tag=partyLeader,scores={timedMode=1}] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ .2 1.2

execute if entity @s[scores={thrownIronIngot=1..}] run function du-in:other/clear_ground_items
