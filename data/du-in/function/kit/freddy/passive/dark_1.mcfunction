#Reset
function du-in:kit/freddy/passive/reset

#Make invisible
tag @s add freddyDark
clear @s #du-in:armor

#Add new modifier
attribute @s attack_damage modifier add freddy_darkness 3 add_value

#set value to prevent looping
scoreboard players set @s lightLevel 0