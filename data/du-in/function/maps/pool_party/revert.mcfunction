#Reset Paz skin
scoreboard players reset @s pazSkin

#Set skins back if other isn't selected
execute if entity @s[scores={wildeSkin=1..},tag=!preserveSkin] run scoreboard players reset @s wildeSkin
execute if entity @s[scores={steveSkin=1..},tag=!preserveSkin] run scoreboard players reset @s steveSkin
execute if entity @s[scores={kyloSkin=1..},tag=!preserveSkin] run scoreboard players reset @s kyloSkin
execute if entity @s[scores={sagoreSkin=1..},tag=!preserveSkin] run scoreboard players reset @s asgoreSkin

#Remove tags
tag @s remove poolParty
tag @s remove preserveSkin