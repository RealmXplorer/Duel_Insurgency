scoreboard players add @s ranMode 1
execute if entity @s[scores={ranMode=2..}] run scoreboard players set @s ranMode 0
execute if entity @s[tag=partyLeader,scores={ranMode=1}] run tag @a add ranMode
execute unless entity @s[tag=partyLeader,scores={ranMode=1}] run tag @a remove ranMode
execute if entity @s[tag=partyLeader,scores={ranMode=1}] run tellraw @a ["",{"text":"Random kit each life","bold":true,"color":"gold"},{"text":" on","color":"green"}]
execute unless entity @s[tag=partyLeader,scores={ranMode=1}] run tellraw @a ["",{"text":"Random kit each life","bold":true,"color":"gold"},{"text":" off","color":"red"}]
scoreboard players reset @s ranItem