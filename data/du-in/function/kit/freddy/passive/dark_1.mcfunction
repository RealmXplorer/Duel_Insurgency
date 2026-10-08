#Reset
function du-in:kit/freddy/passive/reset

#Make invisible
tag @s add freddyDark
tag @s add invisible
clear @s #du-in:armor

#Add new modifier
attribute @s attack_damage modifier add freddy_darkness 3 add_value
attribute @s movement_speed modifier add freddy_darkness 0.03 add_value

#set value to prevent looping
scoreboard players set @s lightLevel 0