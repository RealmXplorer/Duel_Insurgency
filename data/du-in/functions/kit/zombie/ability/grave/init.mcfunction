
data modify entity @s CustomName set from block 246 5 -81 front_text.messages[0]
execute store result score @s player run scoreboard players get @a[tag=kitActions,scores={kit=2},sort=nearest,limit=1] player
tag @s add nameSet
