#Add armor
execute if entity @s[tag=freddyDark,tag=!freddyShadow] run function du-in:kit/freddy/armor

#Keep visible
tag @s remove freddyDark
tag @s[tag=!freddyShadow] remove invisible

#Remove previous modifiers
attribute @s attack_damage modifier remove freddy_darkness