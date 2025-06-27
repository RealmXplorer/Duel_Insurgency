tag @s add poolParty

scoreboard players set @s[scores={kit=1001}] pazSkin 1

execute if entity @s[scores={kit=23}] unless entity @s[scores={wildeSkin=1..}] run scoreboard players set @s wildeSkin 6
execute if entity @s[scores={kit=23,wildeSkin=1..}] run tag @s add preserveSkin

execute if entity @s[scores={kit=7}] unless entity @s[scores={steveSkin=1..}] run scoreboard players set @s steveSkin 6
execute if entity @s[scores={kit=7,steveSkin=1..}] run tag @s add preserveSkin