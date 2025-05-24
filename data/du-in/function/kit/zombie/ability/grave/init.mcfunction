#say success
data modify entity @s CustomName set from block 232 5 27 front_text.messages[0]
#data modify entity @s CustomName set from storage du-in:zombie_grave grave

execute store result score @s player run scoreboard players get @a[tag=kitActions,scores={kit=2},sort=nearest,limit=1] player
tag @s add nameSet
