execute unless entity @s[nbt={Fire:-20}] run data modify entity @s Fire set value -20
execute if entity @s[predicate=!du-in:is_invisible] run effect give @s minecraft:invisibility 99999 1 true