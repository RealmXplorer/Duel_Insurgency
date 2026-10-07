#Add armor
execute if entity @s[tag=freddyDark] run function du-in:kit/freddy/armor

#Keep visible
tag @s remove freddyDark

#Remove previous modifiers
attribute @s attack_damage modifier remove freddy_darkness