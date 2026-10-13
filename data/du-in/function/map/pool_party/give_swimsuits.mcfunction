tag @s add poolParty

#Set Paz to swimsuit
scoreboard players set @s[scores={kit=1001}] pazSkin 1

#If characters don't have another skin equipped, then give them the summer skins.
#Nick Wilde to Swimsuit Wilde
execute if entity @s[scores={kit=23}] unless entity @s[scores={wildeSkin=1..}] run scoreboard players set @s wildeSkin 6
execute if entity @s[scores={kit=23,wildeSkin=1..}] run tag @s add preserveSkin

#Player to Summer Steve
execute if entity @s[scores={kit=7}] unless entity @s[scores={steveSkin=1..}] run scoreboard players set @s steveSkin 6
execute if entity @s[scores={kit=7,steveSkin=1..}] run tag @s add preserveSkin

#Asgore to Dadgore
execute if entity @s[scores={kit=14}] unless entity @s[scores={asgoreSkin=1..}] run scoreboard players set @s asgoreSkin 2
execute if entity @s[scores={kit=14,asgoreSkin=1..}] run tag @s add preserveSkin

#Kylo to Ben Swolo
execute if entity @s[scores={kit=17}] unless entity @s[scores={kyloSkin=1..}] run scoreboard players set @s kyloSkin 1
execute if entity @s[scores={kit=17,kyloSkin=1..}] run tag @s add preserveSkin
