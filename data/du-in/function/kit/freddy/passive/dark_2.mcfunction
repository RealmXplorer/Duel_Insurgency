#Make visible
function du-in:kit/freddy/passive/reset

#Add new Modifier
attribute @s attack_damage modifier add freddy_darkness 2 add_value
attribute @s movement_speed modifier add freddy_darkness 0.02 add_value

#Set value to prevent looping
scoreboard players set @s lightLevel 1