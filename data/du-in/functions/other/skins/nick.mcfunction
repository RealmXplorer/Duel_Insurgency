scoreboard players add @s wildeSkin 1

scoreboard players reset @s[scores={wildeSkin=4..}] wildeSkin

execute unless entity @s[scores={wildeSkin=1..}] run tellraw @s [{"text":"Default Nick Wilde ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={wildeSkin=1}] [{"text":"Officer Wilde ","bold":true,"color":"dark_blue"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={wildeSkin=2}] [{"text":"Saint Nick ","bold":true,"color":"dark_green"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={wildeSkin=3}] [{"text":"Timekeeper Wilde ","bold":true,"color":"dark_green"},{"text":"skin selected!","color":"yellow"}]