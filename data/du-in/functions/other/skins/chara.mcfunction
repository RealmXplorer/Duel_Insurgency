scoreboard players add @s charaSkin 1
scoreboard players reset @s[scores={charaSkin=2..}] charaSkin

clear @s minecraft:player_head{charaHead:1b}

execute unless entity @s[scores={charaSkin=1..}] run tellraw @s ["",{"text":"Default Chara ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={charaSkin=1}] ["",{"text":"Michael Myers ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]
