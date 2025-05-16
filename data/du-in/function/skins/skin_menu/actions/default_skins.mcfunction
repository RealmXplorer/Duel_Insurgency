clear @s barrier[item_model="filled_map"]

tag @s add defaultSelect

function du-in:other/settings/cycle/skin_presets

tag @s remove defaultSelect
execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items
