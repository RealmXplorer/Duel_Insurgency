scoreboard players reset @s pazSkin

execute if entity @s[scores={wildeSkin=1..},tag=!preserveSkin] run scoreboard players reset @s wildeSkin
execute if entity @s[scores={steveSkin=1..},tag=!preserveSkin] run scoreboard players reset @s steveSkin

tag @s remove poolParty
tag @s remove preserveSkin