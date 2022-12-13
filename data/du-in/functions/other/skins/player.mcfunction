scoreboard players add @s steveSkin 1
scoreboard players reset @s[scores={steveSkin=6..}] steveSkin

execute unless entity @s[scores={steveSkin=1..}] run tellraw @s [{"text":"Default Steve ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={steveSkin=1}] [{"text":"Alex ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={steveSkin=2}] [{"text":"Herobrine ","bold":true,"color":"white"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={steveSkin=3}] [{"text":"Goner Steve ","bold":true,"color":"dark_gray"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={steveSkin=4}] [{"text":"Terraria Guy ","bold":true,"color":"green"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={steveSkin=5}] [{"text":"Hypixel Skyblock Player ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]