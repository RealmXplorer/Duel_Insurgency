scoreboard players add @s spamMode 1
execute if entity @s[scores={spamMode=2..}] run scoreboard players set @s spamMode 0
execute if entity @s[tag=partyLeader,scores={spamMode=1}] run tag @a add spamClick
execute unless entity @s[tag=partyLeader,scores={spamMode=1}] run tag @a remove spamClick
execute if entity @s[tag=partyLeader,scores={spamMode=1}] run tellraw @a ["",{"text":"Spam Click","bold":true,"color":"gold"},{"text":" on","color":"green"},{"text":" [WARNING! NOT BALANCED]","color":"red","bold":true}]
execute unless entity @s[tag=partyLeader,scores={spamMode=1}] run tellraw @a ["",{"text":"Spam Click","bold":true,"color":"gold"},{"text":" off","color":"red"}]
scoreboard players reset @s spamItem