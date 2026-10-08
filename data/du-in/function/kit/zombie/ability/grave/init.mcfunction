#say success
data modify entity @s CustomName set from block 232 5 27 front_text.messages[0]
#data modify entity @s CustomName set from storage du-in:zombie_grave grave

# execute store result score @s player run scoreboard players get @p[tag=kitActions,scores={kit=2}] player
execute store result score @s player run scoreboard players get #zombie player

tag @s add nameSet
